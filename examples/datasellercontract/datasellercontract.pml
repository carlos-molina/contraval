/*
 * EPROMELA code of a contract between a buyer and
 * store. 
 * Programmer: Carlos Molinai Jimenez, 9 Jul 2018,
 * Computer Laboratory, Univ Cambridge. 
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

/* var for recording occurrences of executions 
 * with S and BF outcomes                      */


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

bool buyrj=   FALSE;
bool pay=     FALSE;
bool getvou=  FALSE;
bool canc=    FALSE;

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

  INIT(BUYRQ,   BUYER,     1,0,0); 
  INIT(REJ,     STORE,     0,0,0);
  INIT(CONF,    STORE,     0,0,0);
  INIT(PAY,     BUYER,     0,0,0);
  INIT(CANC,    BUYER,     0,0,0);
  INIT(GETVOU,  BUYER,     0,0,0);
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
 /* :: B_E(BUYER,GETVOU,BF); */

 :: B_E(BUYER,CANC,S);
 /* :: B_E(BUYER,CANC,BF); */
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
 *             9 Jul 2018
 * LTL Formula: I used it to generate all the execution
 *              sequences of the epromela model above which
 *              has 4 alternative path to the end.
 *         
 * bash-3.2$ spin -f "<>[](a||b||(b && <>c)||d)"
 */
never  {    /* <>[](a||b||(b && <>c)  ||d) */
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

