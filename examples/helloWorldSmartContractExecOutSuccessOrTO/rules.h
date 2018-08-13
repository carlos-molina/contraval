/*
 * Programmer:
 * Carlos Molina Jimenez, 7 Aug 2018, Computer Lab, Univ Cambridge
 * Carlos.Molina@cl.cam.ac.uk
 *
 * Version: v.7Aug2018:
 *
 * Program: helloWorlSmartContract.pml is the epromela model
 *          of a Hello World contract. It shows the folowing 
 *          actions:
 *          1) the buyer executes a pay operation to comply
 *             with its obligation to pay before a deadline.
 *          2) The execution of pay in time assigns the store
 *             and obligation to execute the opration ack to
 *             acknowledge the receipt of the payment.
 *          3) the store executes an ack opration to comply
 *             with an obligation to acknowledge the receipt of
 *             the payment.
 *          4) Failure to meet deadlines result in abnormal
 *             contract termination.
 * An schematic view of the contract is shown in the
 * helloWorldSmartContractBuyerStoreExecTO.pdf file.
 *
 * rules.h (this file) implements the rules used by the 
 * helloWorldSmartContract.pml model.
 *
 * * Execution:
 * a) helloWorldSmartContract.pml depends on rules.h which compose 
 * this model.
 * b) BizOperation.h bitvector.lpr : epromela files
 * c) parser-filtering.py and pro2sep : sequence generation scripts
 *
 * % pro2seq
 * Type 10 or a larger number when asked about the
 * number of sequences. pro2seq will delete repeated sequences.
 *
 * The code generates 3 execution sequences (in -xml folders).
 * ...
 *
 * Notation used in this code:
 * SC-success, exec--execution
 *
 * SC-success, TO- TimeOut.
 * CCR, CCO: Contract Compliant Right and Obligation, respectively
 * NCC: Non Contract Compliant operation
 * CND: Contract trace Ends. 
 * CO: Continue Contract trace 
 *
 */ 


/* 
 * Rule triggered by execution of pay initiated
 * by the buyer and completes always in success
 * or timeout.
 */
RULE(PAY)
{
 WHEN
  ::EVENT(PAY,IS_O(PAY,BUYER),SC(PAY))
   /* handle pay with success outcome */
   ->{ 
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>PAY</type>\n");
     printf("<status>success</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
     /* printf("PAY-Success!!!\n"); */ 	
     SET_O(PAY,0);  /* cancel oblig to PAY */
     SET_O(ACK,1);  /* store oblig to exec ACK */
     RD(PAY,BUYER,CCO,CO); /* CO: the contr continues */
    }	
  ::EVENT(PAY,IS_O(PAY,BUYER),TO(PAY))
  /* handle pay with timeout outcome */
  ->{ 
     payto= TRUE;  /* var for LTL formulae */
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>store</originator>\n");
     printf("<responder>buyer</responder>\n");
     printf("<type>PAY</type>\n");
     printf("<status>timeout</status>\n");  
     printf("</event>");
     printf("\n\n")}
     SET_O(PAY,0);  /* cancel oblig to PAY */
     DONE(BUYER);
     DONE(STORE);
     atomic{
     printf("\n\n");
     printf("<event>\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("</event>");
     printf("\n\n")}
     RD(PAY,BUYER,CCO,CND); /* CND: contr end abonormally */
    }	
 END(PAY);		 
}


/* 
 * Rule triggered by the execution of ack 
 * initiated by the store and completes  
 * always in success or timeout
 */
RULE(ACK)
{
 WHEN
  ::EVENT(ACK,IS_O(ACK,STORE),SC(ACK))
  /* handle ack with success outcome */
  ->{ 
     ack= TRUE;  /* var for LTL formulae */
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>store</originator>\n");
     printf("<responder>buyer</responder>\n");
     printf("<type>ACK</type>\n");
     printf("<status>success</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
     /* printf("ACK-Success!!!\n"); */ 	
     SET_O(ACK,0); /* store oblig to exec ACK */
     DONE(BUYER);
     DONE(STORE);
     atomic{
     printf("\n\n");
     printf("<event>\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("</event>");
     printf("\n\n")}
     RD(ACK,STORE,CCO,CND); /* CND: contr ends normally*/
    }
 ::EVENT(ACK,IS_O(ACK,STORE),TO(ACK))
  /* handle ack with timeout outcome */
  ->{ 
     ackto= TRUE;  /* var for LTL formulae */
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>store</originator>\n");
     printf("<responder>buyer</responder>\n");
     printf("<type>ACK</type>\n");
     printf("<status>timeout</status>\n");  
     printf("</event>");
     printf("\n\n")}
     SET_O(ACK,0);  /* cancel oblig to ACK */
     DONE(BUYER);
     DONE(STORE);
     atomic{
     printf("\n\n");
     printf("<event>\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("</event>");
     printf("\n\n")}
     RD(ACK,STORE,CCO,CND); /* CND: contr end abonormally */
    }	
 END(ACK);		 
}

