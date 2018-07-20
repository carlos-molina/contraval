/*
 * Programmer:
 * Carlos Molina Jimenez, 18 Jul 2018, Computer Lab, Univ Cambridge
 * Carlos.Molina@cl.cam.ac.uk
 *
 * Version: v.18Jul2018:
 * The epromela model of this version accounts for
 * timeouts only (business failures).
 * A graphical view of the datasellercontract.pml is shown
 * in dataseller.pdf
 *
 * Execution:
 * a) dataseller.pml depends on rules.h which compose this
 * model.
 * b) BizOperation.h bitvector.lpr : epromela files
 * c) parser-filtering.py and pro2sep : sequence generation scripts
 *
 * % pro2seq
 * Type 50 or a larger number when asked about the
 * number of sequences. pro2seq will delete repeated sequences.
 *
 * The code generates 7 execution sequences (in -xml folders).
 * However, we clarify that sequence
 * BUYREQ->BUYCONF->BUYPAY->GETVOU->NORIGHTTOGETVOU->reset
 * is not encoded in the the contract of datasellerTO.pdf
 * diagram. We have generated it artificially because we
 * need it to test the integration of the CCC and Ethereum.
 * We generate it by means of including the alarm message
 * NORIGHTTOGETVOU.
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

#define a (buyrj==TRUE)
#define b (pay==TRUE)
#define c (getvou==TRUE)
#define d (canc==TRUE)
#define e (rejconfto==TRUE)
#define f (paycancto==TRUE)

/* var for recording occurrences of executions 
 * with S and BF outcomes                      
 */


bool BuyRqFailBefore=NO;
bool RejFailBefore=NO;
bool ConfFailBefore=NO;
bool PayFailBefore=NO;
bool CancFailBefore=NO;
bool GetVouFailBefore=NO;

bool payNotification=NO;

/* declaration of the 2 role players involved */
RolePlayer(BUYER,STORE);

/* account for S,BF,TF,TO execution outcome,
 * in this ex, we use only S and BF */
RuleMessage(S,BF,TF,TO); 

/* 5 operations are involved in the contract */
BIS_OP(BUYRQ);
BIS_OP(REJ);
BIS_OP(CONF);
BIS_OP(PAY);
BIS_OP(CANC);
BIS_OP(GETVOU);
BIS_OP(REJCONFTO);
BIS_OP(PAYCANCTO);

bool buyrj=        FALSE;
bool pay=          FALSE;
bool getvou=       FALSE;
bool canc=         FALSE;
bool rejconfto=    FALSE;
bool paycancto=    FALSE;


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
  * granted to buyer or store 
  * 
  * I think that it is posible to introduce an empty
  * rule to model timeouts where one of 2 operations
  * need to be executed: 18 Jul 2018.
  * I introduced REJCONFTO and PAYCANCTO
  */

  INIT(BUYRQ,     BUYER,     1,0,0);
  INIT(REJ,       STORE,     0,0,0);
  INIT(CONF,      STORE,     0,0,0);
  INIT(PAY,       BUYER,     0,0,0);
  INIT(CANC,      BUYER,     0,0,0);
  INIT(GETVOU,    BUYER,     0,0,0);
  INIT(REJCONFTO, STORE,     0,0,0); /* timeout to rej or conf */
  INIT(PAYCANCTO, BUYER,     0,0,0); /* timeout to pay or canc */
 }
 END_INIT:

 /* generation of business events.
  * For each of the 5 operations, 2 possible exec
  * are modelled: exec with S and exec with BF */ 
 end:do
 :: B_E(BUYER,BUYRQ,S);
 /* :: B_E(BUYER,BUYRQ,BF); */

 :: B_E(STORE,REJ,S);
 /* :: B_E(STORE,REJ,BF); */

 :: B_E(STORE,CONF,S);
 /* :: B_E(STORE,CONF,BF); */

 :: B_E(BUYER,PAY,S);
 /* :: B_E(BUYER,PAY,BF); */

 :: B_E(BUYER,GETVOU,S);
 :: B_E(BUYER,GETVOU,TO);

 :: B_E(BUYER,CANC,S);
 /* :: B_E(BUYER,CANC,BF); */

 :: B_E(STORE,REJCONFTO,S); 
 :: B_E(BUYER,PAYCANCTO,S); 
 od; 
}

/* contract rule manager: it uses the rules.h 
 * file declared in the inline definition.
 * It retrieves and includes the rule (one at a
 * time) needed to respond to the event under
 * process                                    */ 
proctype CRM()
{
 printf("CONTRACT RULE MANAGER"); 
 end:do
  :: CONTRACT(BUYRQ);        
  :: atomic{CONTRACT(REJ);    buyrj= TRUE};  /* a=TRUE */
  :: CONTRACT(CONF);  
  :: atomic{CONTRACT(PAY);    pay= TRUE};    /* b=TRUE */
  :: atomic{CONTRACT(GETVOU); getvou= TRUE}; /* c=TRUE */
  :: atomic{CONTRACT(CANC);   canc= TRUE};   /* d=TRUE */
  :: atomic{CONTRACT(REJCONFTO); rejconfto= TRUE}; /* e=TRUE */
  :: atomic{CONTRACT(PAYCANCTO); paycancto= TRUE}; /* f=TRUE */
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
 * Programmer: Carlos Molina, Computer Lab, Univ Cambridge
 *             18 Jul 2018
 * LTL Formula: I used it to generate all the execution
 *              sequences of the epromela model above which
 *              has 6 alternative path to the end.
 *         
 * bash-3.2$ spin -f "<>[](a||b||e||f||(b && <>c)||d)"
 */
never  {    /* <>[](a||b||e||f||(b && <>c)||d) */
T0_init:
        do
        :: ((((a)) || ((((b)) || ((((d)) || ((((e)) || ((f)))))))))) -> goto accept_S3
        :: (1) -> goto T0_init
        od;
accept_S3:
        do
        :: ((((a)) || ((((b)) || ((((d)) || ((((e)) || ((f)))))))))) -> goto accept_S3
        od;
}



/*
 * Programmer: Carlos Molina, Computer Lab, Univ Cambridge
 *             9 Jul 2018
 * LTL Formula: I used it to generate all the execution
 *              sequences of the epromela model above which
 *              has 4 alternative path to the end.
 *         
 * bash-3.2$ spin -f "<>[](a||b||(b && <>c)||d)"
 */
 /* never  {   */ /* <>[](a||b||(b && <>c)  ||d) */
/*
T0_init:
        do
        :: ((((a)) || ((((b)) || ((d)))))) -> goto accept_S3
        :: (1) -> goto T0_init
        od;
accept_S3:
        do
        :: ((((a)) || ((((b)) || ((d)))))) -> goto accept_S3
        od;
}
*/


