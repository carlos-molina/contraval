/*
 * Programmer:
 * Carlos Molina Jimenez, 19 Jul 2018, Computer Lab, Univ Cambridge
 * Carlos.Molina@cl.cam.ac.uk
 *
 * Version: v.19Jul2018:
 * The epromela model of this version accounts for
 * timeouts and business failures.
 * The execution model of each contractual operation is shown in
 * operationexecutionmodel.pdf

 * EPROMELA code of a contract between a buyer and
 * store. It accounts for timeouts and business
 * failures. 
 *
 * Notation used in this code:
 * S-success, BF-business failure, TF-technical
 * failure, TO--timeout, exec--execution
 *
 * Execution:
 * It needs the epromela macros and the rules.h file which
 * contains the business rules.
 *
 * % pro2seq
 * Type PromelaModel name (ex dataseller.pml) followed by [ENTER]:dataseller.pml
 * Type Num of execution sequences (ex 1, 12, 100) followed by [ENTER]:300 
 *
 * I run it on MacBook Air
 * It produces 246 sequences.
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
#define g (paybizfail==TRUE)
#define h (rejbizfail==TRUE)

#define i (buyreqbizfail ==TRUE)
#define j (confbizfail   ==TRUE)
#define k (cancbizfail   ==TRUE)
#define l (getvoubizfail ==TRUE)

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

/*
 * variable for LTL forlulae
 */
bool buyrj=        FALSE;
bool pay=          FALSE;
bool getvou=       FALSE;
bool canc=         FALSE;
bool rejconfto=    FALSE;
bool paycancto=    FALSE;
bool paybizfail=   FALSE;
bool rejbizfail=   FALSE;

bool buyreqbizfail = FALSE
bool confbizfail   = FALSE
bool cancbizfail   = FALSE
bool getvoubizfail = FALSE

/* Business Event Generator */ 
proctype BEG()
{
int numpaybizfail= 0; /*count occurrence of biz fail to pay*/ 
int numrejbizfail= 0; /*count occurrence of biz fail to rej*/ 

int numbuyreqbizfail= 0; /*count occurrence of biz fail to buyreq*/ 
int numconfbizfail=   0; /*count occurrence of biz fail to conf*/ 
int numcancbizfail=   0; /*count occurrence of biz fail to canc*/ 
int numgetvoubizfail= 0; /*count occurrence of biz fail to getvou*/ 

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
  INIT(REJCONFTO, STORE,     0,0,0);
  INIT(PAYCANCTO, BUYER,     0,0,0);
 }
 END_INIT:

 /* generation of business events.
  * For each of the 5 operations, 2 possible exec
  * are modelled: exec with S and exec with BF */ 
 end:do
 :: B_E(BUYER,BUYRQ,S);
 :: atomic{B_E(BUYER,BUYRQ,BF);
    if
    :: (numbuyreqbizfail< 2)->  numbuyreqbizfail= numbuyreqbizfail+1 
    :: (numbuyreqbizfail== 2)-> buyreqbizfail= TRUE
    fi};

 :: B_E(STORE,REJ,S);
 :: atomic{B_E(STORE,REJ,BF); 
    if
    :: (numrejbizfail< 2)->  numrejbizfail= numrejbizfail+1 
    :: (numrejbizfail== 2)-> rejbizfail= TRUE
    fi};

 :: B_E(STORE,CONF,S);
 :: atomic{B_E(STORE,CONF,BF); 
    if
    :: (numconfbizfail< 2)->  numconfbizfail= numconfbizfail+1 
    :: (numconfbizfail== 2)-> confbizfail= TRUE
    fi};

 :: B_E(BUYER,PAY,S);
 :: atomic{B_E(BUYER,PAY,BF); 
    if
    :: (numpaybizfail< 2)->  numpaybizfail= numpaybizfail+1 
    :: (numpaybizfail== 2)-> paybizfail= TRUE
    fi};

 :: B_E(BUYER,GETVOU,S);
 :: atomic{B_E(BUYER,GETVOU,TO);
    if
    :: (numgetvoubizfail< 2)->  numgetvoubizfail= numgetvoubizfail+1 
    :: (numgetvoubizfail== 2)-> getvoubizfail= TRUE
    fi};

 :: B_E(BUYER,CANC,S);
 :: atomic{B_E(BUYER,CANC,BF); 
    if
    :: (numcancbizfail< 2)->  numcancbizfail= numcancbizfail+1 
    :: (numcancbizfail== 2)-> cancbizfail= TRUE
    fi};

 :: B_E(STORE,REJCONFTO,S); 
 :: B_E(BUYER,PAYCANCTO,S); 
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
 *             19 Jul 2018
 * LTL Formula: I used it to generate all the execution
 *              sequences of the epromela model above which
 *              has 12 alternative path to the end.
 *              It allows a single repetition of each operation
 *              that completes in business failure. 
 *
 * I produces this LTL on my MacBook air.  
 * bash-3.2$ spin -f "<>[](a||b||e||f||g||h||i||j||k||l||(b && <>c)||d)"
 */
never  {    /* <>[](a||b||e||f||g||h||i||j||k||l||(b && <>c)||d) */
T0_init:
	do
	:: ((((a)) || ((((b)) || ((((d)) || ((((e)) || ((((f)) || ((((g)) || ((((h)) || ((((i)) || ((((j)) || ((((k)) || ((l)))))))))))))))))))))) -> goto accept_S3
	:: (1) -> goto T0_init
	od;
accept_S3:
	do
	:: ((((a)) || ((((b)) || ((((d)) || ((((e)) || ((((f)) || ((((g)) || ((((h)) || ((((i)) || ((((j)) || ((((k)) || ((l)))))))))))))))))))))) -> goto accept_S3
	od;
}




/*
 * Programmer: Carlos Molina, Computer Lab, Univ Cambridge
 *             19 Jul 2018
 * LTL Formula: I used it to generate all the execution
 *              sequences of the epromela model above which
 *              has 8 alternative path to the end.
 *              It tolerates a single repetition of biz failures of
 *              pay and rej.
 *
 * I produces this LTL on my MacBook air.         
 * bash-3.2$ spin -f "<>[](a||b||e||f||g||h||(b && <>c)||d)"
 */
/* never  {    *//* <>[](a||b||e||f||g||h||(b && <>c)||d) */
/*
 T0_init:
	do
	:: ((((a)) || ((((b)) || ((((d)) || ((((e)) || ((((f)) || ((((g)) || ((h)))))))))))))) -> goto accept_S3
	:: (1) -> goto T0_init
	od;
accept_S3:
	do
	:: ((((a)) || ((((b)) || ((((d)) || ((((e)) || ((((f)) || ((((g)) || ((h)))))))))))))) -> goto accept_S3
	od;
}
*/



/*
 * Programmer: Carlos Molina, Computer Lab, Univ Cambridge
 *             19 Jul 2018
 * LTL Formula: I used it to generate all the execution
 *              sequences of the epromela model above which
 *              has 7 alternative path to the end.
 *              It allows a single re-execution of a pay
 *              operation that compleste in business failure before
 *              ending the contract.
 *         
 * bash-3.2$ spin -f "<>[](a||b||e||f||g||(b && <>c)||d)"
 */
 /* never  {   */ /* <>[](a||b||e||f||g||(b && <>c)||d) */
 /*
 T0_init:
	do
	:: ((((a)) || ((((b)) || ((((d)) || ((((e)) || ((((f)) || ((g)))))))))))) -> goto accept_S3
	:: (1) -> goto T0_init
	od;
accept_S3:
	do
	:: ((((a)) || ((((b)) || ((((d)) || ((((e)) || ((((f)) || ((g)))))))))))) -> goto accept_S3
	od;
}
*/



/*
 * Programmer: Carlos Molina, Computer Lab, Univ Cambridge
 *             18 Jul 2018
 * LTL Formula: I used it to generate all the execution
 *              sequences of the epromela model above which
 *              has 6 alternative path to the end.
 *         
 * bash-3.2$ spin -f "<>[](a||b||e||f||(b && <>c)||d)"
 */
/* never  {    *//* <>[](a||b||e||f||(b && <>c)||d) */
 /*
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
*/



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


