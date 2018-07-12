"""
PROGRAMMER: Ioannis Sfyrakis 
            (MSc student at Newcastle Univ, Sep 2012)

            Latest version: 9 Oct 2012 by Carlos Molina

PROGRAM: This is a python 2.7 program for parsing
         counter examples (execution sequences) from 
         the Spin model checker. 
         It extracts xml-like tagged messages: 
3: proc 1 (Store) incorrectchorexml:75 Recv BuyReq,
             <event>
              <originator>buyer</originator>
              <responder>store</responder>
              <type>BUYREQ</type>
              <status>success</status>
             </event>
5: pro 1 (Store) incorrectchorexml:85 Sent BuyRej,1

RUN:
 % python parser.py SeqFolder
   --SeqFolder contains a list of N counterexamples,
     such as seq1, seq2 and seq3

 The parser creates a SeqFolder-xml
 folder with N subfolders called seq1, seq2 and seq3.
 In each subfolder, the parser stores M files
 called event1.xml, event2.xml, event3.xml, etc.
 where M equals the number of xml-like tagged
 messages parsed from each counterexample.

DEPENDENCIES:  pyparsing, lxml

install pyparsing library
easy_install pyparsing

install lxml library
easy_install --allow-hosts=lxml.de,*.python.org lxml

"""

import os, sys
import pyparsing as pyp
import errno
from lxml import etree
from os import walk, remove, stat
from os.path import join as joinpath
from md5 import md5

def main():
    print("command-line argument count:", len(sys.argv))
    print("command-line arguments:")
    print("    ", sys.argv)

    #Create folder ExeSeqFolder-xml for storing subfolders
    #seq1, seq2, seq3, etc.
    if not os.path.exists(sys.argv[1]+"-xml"):
        os.makedirs(sys.argv[1]+"-xml")
    
    #Filter out duplicate Seq files (counter examples)
    uniqueFiles=  findUniqueSeqFiles(sys.argv[1])
    print ("duplicates: ",uniqueFiles)

    os.chdir(sys.argv[1])

    #Extract the names of all the files with
    #"Seq" or "Sequences" substrings in their file names
    #ignore .DS_Store files in mac platform
    for file in os.listdir("."):
      filepath= sys.argv[1] + "/" + file
      if file !=".DS_Store" and (file.find("Seq")>0 or 
         file.find("Sequence")>0) and filepath in uniqueFiles:
         parseFile(file) 
    return 0


#Identify distinguishable sequence files from
#the those stored in ExecSeqFolder
def findUniqueSeqFiles(execSeqFolder):

    filesizes = {}

    for path, dirs, files in walk(execSeqFolder):
        for filename in files:
            filepath = joinpath( path, filename )
            filesize = stat( filepath ).st_size
            filesizes.setdefault( filesize, [] ).append( filepath )
    unique = set()
   # print("filesizes: " ,filesizes)

    uniqueFiles=[]

    for files in [ flist for flist in filesizes.values() if len(flist)>1 ]:
        for filepath in files:
            with open( filepath ) as openfile:
                filehash = md5( openfile.read() ).hexdigest()
            if filehash not in unique:
                unique.add( filehash)
                uniqueFiles.append(filepath)
    return uniqueFiles



#parse each sequence file
def parseFile(file):

  CreateDirForXmlFiles(file)
  # define grammar for sequence file

  tagBevent= pyp.Literal("<event>")

  tagOriginator= pyp.Literal("<originator>") + pyp.Word(pyp.alphas) + pyp.Literal("</originator>")

  tagResponder= pyp.Literal("<responder>") + pyp.Word(pyp.alphas) + pyp.Literal("</responder>")

  tagType= pyp.Literal("<type>") + pyp.Word(pyp.alphas) + pyp.Literal("</type>")

  tagStatus= pyp.Literal("<status>") + pyp.Word(pyp.alphas) + pyp.Literal("</status>")

  tagEevent= pyp.Literal("</event>")

  parExpression= tagBevent | tagOriginator | tagResponder | tagType | tagStatus | tagEevent

  f= open(file)
  lines= f.readlines()
  array= []
  for line in lines:
      #print line
      # scan the whole file (now stored in 'lines' and
      # store every match you find of the pattern 'lineString'
      # in array.
      try:
         #print("MY CURRENTE LINE: " + str(line))
         data= parExpression.parseString(line)
         
         array.append(data)
         #print("I have appended !!!!!!!!MY DATA: " + str(data) + "   !!!!\n")
      except pyp.ParseException as exception:
          print exception
  f.close()

  print("\n")
  print("Elements of file= " + "\n")
  print ("lengtharray= %s " %len(array)) 
  for element in array:
      print element

  for index, k in enumerate(range(0, len(array), 6)):
      bevent= array[k]          #array[k]=<event> tag
      originator= array[k+1][1] #a[k+1]=<originator> a[k+1][1]= store
      responder= array[k+2][1]  #responder 
      msgtype= array[k+3][1]    #type 
      status= array[k+4][1]     #status 
      eevent= array[k+5]        #array[k+5]=</event>
      print("\n")

      print ("index========= %s " %index)
      print ("k============= %s " %k)
      print ("bevent= %s " %bevent)
      print ("originator= %s " %originator)
      print ("responder= %s " %responder)
      print ("type= %s " %msgtype)
      print ("status= %s " %status)
      print ("eevent= %s " %eevent)

      create_xmlFiles(originator, responder, msgtype, status).write(
          os.getcwd()+"-xml"+"/" + file + "/" + "event" + str(index + 1) + ".xml", pretty_print=True)
  return 0


# Verify that the dir ../SeqFolder-xml/ChoreExecSeq_i does not
# exist, then create it
def CreateDirForXmlFiles(path):
    try:
        path = os.getcwd()+"-xml"+"/" + path
        if not os.path.exists(path):
           os.makedirs(path)
           print ("In *-xml I've created: " + path + "\n")
    except OSError as exception:
        if exception.errno != errno.EEXIST:
            raise


#Create an xml file for each xml message within
# ...SeqFolder-xml for each <event>...</event> parsed.
def create_xmlFiles(originator, responder, msgtype, status):
    node = etree.Element('event')
    node1 = etree.SubElement(node, 'originator')
    node1.text = originator
    node2 = etree.SubElement(node, 'responder')
    node2.text = responder
    node3 = etree.SubElement(node, 'type')
    node3.text = msgtype
    node4 = etree.SubElement(node, 'status')
    node4.text = status
    doc = etree.ElementTree(node)
    return doc


if __name__ == '__main__':
    main()
