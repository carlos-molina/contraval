/*
 * Carlos Molina-Jimenez, 18 Apr 2013, Ncl Uni, UK
 *
 * BuyerStoreContract.pml: EPROMELA code of a 
 * contract between a buyer and store. This model 
 * is meant to correctly implement the English 
 * contract of Fig 4 of this techical report, thus 
 * it accounts for technical failures.
 *
 * To run this code you need 
 * 1) Spin Version 6.1.0 or newer.
 * 2) The macros setting.h and BizOperation.h
 *    vector.lpr and for.h deployed in your
 *    working folder.
 * 3) rules.h in your working folder.
 *
 * 4) Edit BuyerStoreContract.pml to comment 
 * and uncomment the LTL provided
 * in the code as needed. Keep in mind that
 * SPIn can verify only a single LTL at a time.
 *
 * 5) To run the code from Linux type:
 * % spin -a BuyerStoreContract.pml
 * % cc -o pan pan.c
 * % pan -a
 *
 * Notation used in this code:
 * S-success, BF-business failure, TF-technical
 * failure, TO--timeout, exec--execution
 */ 

#include "setting.h"      /* macro definition */
#include "BizOperation.h" /* macro definition */
#include "rules.h"        /* ECA rule code    */

#define TRUE  1
#define FALSE 0
#define YES   1
#define NO    0

#define AbnContractEnd (abncoend==TRUE)

/* var for recording occurrences of executions 
 * with S and BF outcomes                      
 */
bool abncoend=FALSE;
bool ReqFailBefore=NO;
bool RejFailBefore=NO;
bool ConfFailBefore=NO;
bool PayFailBefore=NO;
bool CancFailBefore=NO;


/* declaration of the 2 role players involved */
RolePlayer(BUYER,STORE);

/* account for S,BF,TF,TO execution outcome,
 * in this ex, we use only S and BF */
RuleMessage(S,BF,TF,TO); 

/* 5 operations are involved in the contract */
BIS_OP(BUYREQ);
BIS_OP(BUYREJ);
BIS_OP(BUYCONF);
BIS_OP(BUYPAY);
BIS_OP(BUYCANC);


/*
 * LTLs for expressing, mutual exclusion of 
 * obligations and prohibitions which are 
 * checked by default
 */ 

/* 
 * When the buyer is obliged to pay the obligation
 * remains pending until the buyer pays or cancels
 * or the contract terminates abnormally.
 */
/* ltl p0 { [](!IS_O(BUYPAY,BUYER)) || 
   <>(IS_O(BUYPAY,BUYER) -> <> (IS_X(BUYPAY,BUYER) 
   || IS_X(BUYCANC,BUYER) || AbnContractEnd))  } */ 


/*
 * trap LTL for generating execution sequences
 */
/*
 * the following LTL can be used for generation
 * sequences that include the execution of BUYREJ
 * including the simplest one: BUYREQ(S)-> BUYREJ(S).
 */
/* ltl p1 { !<>IS_X(BUYREJ,STORE) } */

/*
 * The following LTL can be used for generating
 * exe sequences that include the successful
 * and bizfail execution of operations that
 * eventually complete in a successful execution 
 * of BUYPAY 
 */
/* ltl p2 { !<>IS_X(BUYPAY,BUYER) } */

/*
 * The following LTL can be used for generating
 * exe sequences that include the successful
 * and tecfail execution of operations that
 * eventually complete in a successful execution 
 * of BUYCANC 
 */
ltl p3 { !<>IS_X(BUYCANC,BUYER) }


 
/* Business Event Generator */ 
proctype BEG()
{
 BEGIN_INIT:
 {
 /* Define the initial state of the rights (R),
  * obligations (O) and prohibitions (P) of the 2
  * role players following:
  * INIT(OperName, RolePlayerName, R,O,P)
  * 1 means granted, 0 means not granted  
  * In initial state buyer has been granted the
  * right to execute BUYREQ. No other R,O,P are
  * granted to buyer or store */
  DONE(BUYER);
  DONE(STORE);

  INIT(BUYREQ,  BUYER, 1,0,0); 
  INIT(BUYREJ,  STORE, 0,0,0);
  INIT(BUYCONF, STORE, 0,0,0);
  INIT(BUYPAY,  BUYER, 0,0,0);
  INIT(BUYCANC, BUYER, 0,0,0);
 }
 END_INIT:

 /* generation of business events.
  * For each of the 5 operations, 2 possible exec
  * are modelled: exec with S and exec with TF */ 
 end:do
 :: B_E(BUYER, BUYREQ,  S);  
 :: B_E(BUYER, BUYREQ,  TF); 

 :: B_E(STORE, BUYREJ,  S); 
 :: B_E(STORE, BUYREJ,  TF);

 :: B_E(STORE, BUYCONF, S);
 :: B_E(STORE, BUYCONF, TF);

 :: B_E(BUYER, BUYPAY,  S);            
 :: B_E(BUYER, BUYPAY,  TF);             

 :: B_E(BUYER, BUYCANC, S);            
 :: B_E(BUYER, BUYCANC, TF); 
 od; 
}

/* contract rule manager: it uses the rules.h 
 * file declared in the inline definition.
 * It retrieves and includes the rule (one at a
 * time) needed to respond to the event under
 * process                                    
 */ 
proctype CRM()
{
 printf("CONTRACT RULE MANAGER"); 
 end:do
  :: CONTRACT(BUYREQ);  /* include RULE(BUYREQ) */
  :: CONTRACT(BUYREJ);  /* include RULE(BUYREJ) */
  :: CONTRACT(BUYCONF); 
  :: CONTRACT(BUYPAY); 
  :: CONTRACT(BUYCANC);
 od;
}

init
{
  atomic /* start exec of BRG and CRM */
  { 
   run BEG(); run CRM(); 
  }
}

