/*
 * Programmer:
 * Carlos Molina Jimenez, 5 Aug 2018, Computer Lab, Univ Cambridge
 * Carlos.Molina@cl.cam.ac.uk
 *
 * Version: v.5Aug2018:
 *
 * Program: helloWorl.pml is a hello-world model written in
 *          epromela. It shows the folowing actions: 
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
 * Execution:
 * a) helloWorld.pml depends on rules.h which compose this
 * model.
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
 * S-success, exec--execution
 */ 

#include "setting.h"      /* macro definition */
#include "BizOperation.h" /* macro definition */
#include "rules.h"        /* ECA rule code    */

#define TRUE  1
#define FALSE 0
#define YES   1
#define NO    0

/*
 * define variables to be used in LTL formulae
 */
#define a (ack   == TRUE)
#define b (payto == TRUE)
#define c (ackto == TRUE)


/* 
 * declare 2 role players involved in the smart contract 
 */
RolePlayer(BUYER,STORE);

/* 
 * declare potential execution outcomes. S-success,
 * BF- business failure, TF-technical failure.
 * This model uses S only. 
 */
RuleMessage(S, BF, TF, TO); 

/* 
 * declare 2 operations involved in the 
 * smart contract 
 */
BIS_OP(PAY);
BIS_OP(PAYTO);  /* it models timeout to pay */
BIS_OP(ACK);
BIS_OP(ACKTO);  /* it models timeout to ack */

/*
 * set LTL variables to FALSE
 */
bool ack=   FALSE;
bool payto= FALSE;
bool ackto= FALSE;


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
  * In initial state buyer has been assigned the
  * the obligation to execute pay. No other R,O,P are
  * granted to buyer or store 
  * 
  */

  INIT(PAY,   BUYER,  0,1,0); /* buyer has oblig to exec pay */
  INIT(PAYTO, BUYER,  0,1,0); /* or PAYTO                    */

  INIT(ACK,   STORE,  0,0,0);
  INIT(ACKTO, STORE,  0,0,0);
 }
 END_INIT:


 /* 
  * Initialise the BEG to generate business events.
  * For each of the 2 operations, we model 2 possible 
  * exec outcomes: sucess and timeout.
  */ 
 end:do
 :: B_E(BUYER, PAY,S); 
 :: B_E(BUYER, PAYTO,S); 

 :: B_E(STORE, ACK,S);
 :: B_E(STORE, ACKTO,S);
 od; 
}

/* 
 * contract rule manager: it uses the rules.h 
 * file declared in the inline definition.
 * It retrieves and includes the rule (one at a
 * time) needed to respond to the event under
 * process                                    
 */ 
proctype CRM()
{
 printf("CONTRACT RULE MANAGER"); 
 end:do
  :: CONTRACT(PAY);       
  :: atomic{CONTRACT(ACK);     ack=   TRUE}    /* a=true */ 
  :: atomic{CONTRACT(PAYTO);   payto= TRUE}    /* b=true */
  :: atomic{CONTRACT(ACKTO);   ackto= TRUE}    /* c=true */
 od;
}

init
{
  atomic /* start exec of BRG and CRM */
  { 
   run BEG(); run CRM(); 
  }
}

/*
 * Programmer: Carlos Molina-Jimenez
 * Department of Computer Science and Technology,
 * (Computer Laboratory), University of Cambridge
 * 5 Aug 2018
 * LTL Formula: 
 *          I generated this LTL formula with spin
 *          running on my MacBook.
 *
 *          I used it to generate all the execution
 *          sequences of the epromela model above which
 *          has 3 alternative path to the end.
 *         
 * bash-3.2$ spin -f "<>[](a||b||c)"
 */
never  {    /* <>[](a||b||c) */
T0_init:
	do
	:: ((a||b||c)) -> goto accept_S4
	:: (1) -> goto T0_init
	od;
accept_S4:
	do
	:: ((a||b||c)) -> goto accept_S4
	od;
}
