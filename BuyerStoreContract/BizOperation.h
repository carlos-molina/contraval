#include "for.h"
#include "bitvector.lpr"
/*
 * ====================================================================================
 * As in gcc's testsuite. Counts the number of arguments TAKES BETWEEN 1-10 ARG
 * ====================================================================================
 */
#define gnu_count(y...)   _gnu_count1 ( , ##y)
#define _gnu_count1(y...) _gnu_count2 (y,10,9,8,7,6,5,4,3,2,1,0)
#define _gnu_count2(_,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,n,ys...) n

/*bool rest_exe_trace=0;*/
BITV_32 executionTrace;
byte cntttr=0;

/*byte rplayer;*/


/*
byte bo_cntttr=cntttr;
byte BO_ARRAY[32] ;
*/

/*
#define BO_ITEM(name,cntttr) \
BO_ARRAY[cntttr] = name
*/

/*
inline RE_START()
{
	d_step
	{
	  for(j, 1, bo_cntttr)
      
	  
	  rof(j)	  
	};
}
*/

#define resetExecutionTrace() \
SET_ALL_0(executionTrace) 

inline RE_START_EXT(rp)
{
  SET_ALL_0(rp);
}
#define RE_START_EXT(rp) \
RE_START_EXT(rp);
/*#define RE_START_EXT(rp)*/

inline DONE(rp)
{
 cntttr=0;
 /*resetExecutionTrace();*/
}
#define DONE(rp) \
DONE(rp##exTrace); \
SET_ALL_0(rp##exTrace);

inline rest_exe_trace_value()
{
	rest_exe_trace=1; /* Why this is = 1 ??*/
					  /*  This one is not used - dead code*/
}

/*
#define rest_exe_trace_value() \
rest_exe_trace_value()
*/

bool rTemp;
bool oTemp;
bool pTemp;

typedef RP_NAME {
        byte  rp_n
};

typedef BIS_OP
{ 
	byte name; 
	byte role_pl;
	bool right; 
	bool oblig; 
	bool prohib; 
	bool executed; 
	byte id;	
	byte status;
} 

#define BIS_OP(name) BIS_OP name##_##bo; \
mtype= { name }

#define IS_RPLR(name,RolePlayer) \
name##_##bo.role_pl==RolePlayer

#define IS_R(name,rp) \
name##_##bo.right==1 && name##_##bo.role_pl==rp

#define IS_O(name,rp) \
name##_##bo.oblig==1 && name##_##bo.role_pl==rp

#define IS_OO(name) \
name##_##bo.oblig==1

#define IS_P(name,rp) \
name##_##bo.prohib==1 && name##_##bo.role_pl==rp


#define rest_exe_trace_value() \
rest_exe_trace_value()

#define COMMAND(NAME)  { SET_ALL_0(NAME ## exTrace) }


inline RuleDone(rp)
{
 DONE(rp);
}
#define RuleDone(rp) \
RuleDone(rp)



inline RuleDecision(rp)
{
    /*printf("Role Plyer" " is %d" rp)*/
 	if 
		::contractResponse(CCR,CO) -> skip;
		::contractResponse(CCO,CO) -> skip;
		::contractResponse(CCP,CO) -> skip;
		::contractResponse(NCC,CO) -> skip;
		
		::contractResponse(CCR,CNL) ->  goto BEGIN_INIT;
		::contractResponse(CCO,CNL) ->  goto BEGIN_INIT;
		::contractResponse(CCP,CNL) ->  goto BEGIN_INIT;	
		
		::contractResponse(CCR,RST) ->  goto BEGIN_INIT;
		::contractResponse(CCO,RST) ->  goto BEGIN_INIT;
		::contractResponse(CCP,RST) ->  goto BEGIN_INIT;
		
		::contractResponse(CCR,CND) ->  goto END_INIT;
		::contractResponse(CCO,CND) ->  goto END_INIT;
		::contractResponse(CCP,CND) ->  goto END_INIT;		
	fi;	
}
#define RuleDecision(rp) \
RuleDecision(rp)




/*
inline SET_R(bo,r)
{
  bo.right=r;
}
#define SET_R(name,r) \
SET_R(name##_##bo,r)
*/


/*
 * ====================================================================================
 * INIT(business operation,right,opligation,prohibition,role player) -> bo|r|o|p|rp
 * ====================================================================================
*/
                                /*INIT*/
/*//////////////////////////////////////////////////////////////////////////*/
inline INIT_WITH_5(bo,rp,r,o,p)
{
 d_step
 {
			cntttr=cntttr+1;
			bo.role_pl=rp;
			bo.right=r;
			bo.oblig=o;
			bo.prohib=p;	
            bo.executed=0; /* Double check this - do we need it here ??*/
			bo.id=cntttr;
 }
}



inline INIT_WITH_2(bo,rp)
{
 d_step
 {
			cntttr=cntttr+1;			
			bo.role_pl=rp;	
            bo.executed=0;
			bo.id=cntttr;
 }
           /* BO_ITEM(bo,cntttr);*/
}


/*
#define INIT(name,r,o,p,rp) \
INIT( name##_##bo,r,o,p,rp )
*/

#define RL_PLR_EX_TR(name) \
SET_1(e##name##_##bo.role_pl,name##_##bo.id);

inline GET_ROLPLR(name)
{
  byte rolePlayerrr;
  rolePlayerrr=name##_##bo.role_pl;		
}
#define GET_ROLPLR(name);

/*
#define SET_X(name) \
GET_ROLPLR(name) \
SET_1(exTrace##rolePlayerrr,name##_##bo.id)
*/
/*
#define SET_X(name) \
SET_1(executionTrace,name##_##bo.id)
*/
/*SET_1(name##_##bo.role_pl##exTrace,name##_##bo.id) */

/*executionTrace*/

/* NOTE_ it is important to put the semi-colon after IS_RPLR!!!*/
/* This Macro to reset the exec status to BO correspond to the role_player
   belong to the BO. IS_RPLR(name,name##_##bo.role_pl); \
*/

#define RESET_X(name) \
IS_RPLR(name,name##_##bo.role_pl); \
SET_0(executionTrace,name##_##bo.id)



inline REST_ALL_BO(name)
{
	d_step{
	 for (i, 1, 31)
	  RESET_X(name);
	 rof(i)};
}
#define RESET_ALL_BO(name) \
REST_ALL_BO(name)
 
/*
#define SET_X(name) \
SET_1(executionTrace,name##_##bo.id)
*/
/*
#define IS_X(name) \
IS_1(executionTrace,name##_##bo.id)
*/

#define IS_X(name,rp) \
IS_1(rp##exTrace,name##_##bo.id)

/*
#define resetExecutionTrace() \
SET_ALL_0(executionTrace) 
*/

/*//////////////////////////////////////////////////////////////////////////*/

                                /*SET_R*/
								
/*//////////////////////////////////////////////////////////////////////////*/

inline SET_R(bo,r)
{
  bo.right=r;
  assert(!(bo.right==1 && bo.oblig==1));
  assert(!(bo.right==1 && bo.prohib==1));
}
#define SET_R(name,r) \
SET_R(name##_##bo,r)

#define GET_R(name) \
rTemp=name.right
/*
#define GET_ROLPLR(name) \
rolplrTemp=name.role_pl
*/
/*//////////////////////////////////////////////////////////////////////////*/

#define GET_EXECUTION(name) name##_##bo.executed

#define GET_RLPLYR(name) name##_##bo.role_pl

                                /*SET_O*/
/*//////////////////////////////////////////////////////////////////////////*/
inline SET_O(bo,o)
{
  bo.oblig=o;
  assert(!(bo.oblig ==1 && bo.prohib ==1)); 
  assert(!(bo.oblig ==1 && bo.right ==1)); 
}
#define SET_O(name,o) \
SET_O(name##_##bo,o)

#define GET_O(name) \
oTemp=name.oblig
/*//////////////////////////////////////////////////////////////////////////*/
								/*SET_P*/
/*//////////////////////////////////////////////////////////////////////////*/
inline SET_P(bo,p)
{
  bo.prohib=p;
  assert(!(bo.prohib ==1 && bo.right ==1));
  assert(!(bo.prohib ==1 && bo.oblig ==1));
}
#define SET_P(name,p) \
SET_P(name##_##bo,p)

#define GET_P(name) \
pTemp=name.prohib


inline COPY(src,dst)
{
 d_step {
            dst.name   = src.name->
			dst.right  = src.right ->
			dst.oblig  = src.oblig ->
			dst.prohib = src.prohib;
 }
}
#define COPY(source,distination) \
COPY(source##_##bo,distination##_##bo)




/* TO BE ADDED */

/*//////////////////////////////////////////////////////////////////////////*/

/*
 * ====================================================================================
 *	Here we we have all the previous stuff together to define our business operation
 *	and the corresponding business event. We give a name and initialize the ROP for
 *	this particular business operation.
*/ 
/*
#define BIS_OP(name) \
BizOper(name) \
BizOpName(name) 
*/

#define HAS_ACCEPTED(name) \
name##_##bo.status==ACCEPT

#define HAS_REJECTED(name) \
name##_##bo.status==REJECT

#define bizEvent(name) \
name##_##bo.right==1  || name##_##bo.oblig==1 || name##_##bo.prohib==1 

#define PRETTY_PRINT(msg) printf(msg);

/*******************************************************************/
#define endThisFi fi;
#define NYS(bo1) :: else skip \
endThisFi

#define SYN(bo1,rp) if:: \
((IS_X(bo1,rp)))


inline SET_STATUS(bo,stat){
  bo.status=stat;
}
#define SET_STATUS(name,stat) \
name##_##bo.status=stat

/*
 * ====================================================================================
 * When_Event(event, status) -> status is S|BF|TF - sucssesful, business 
 * failure and technical failure.
 
 * ====================================================================================
*/
/* YOU  CAN DLELET THE LINE HANDLES TIMEOUT (TO)*/
inline When_Event(name){
 if
  ::BEG2CRM ? [name,S]  -> BEG2CRM ? _,_ 
  ::BEG2CRM ? [name,TO]  -> BEG2CRM ? _,_ 
  ::BEG2CRM ? [name,TF]  -> BEG2CRM ? _,_ 
  ::BEG2CRM ? [name,BF]  -> BEG2CRM ? _,_ 
 fi;
}
#define When_Event(name) \
When_Event(name)



inline sendEvent(name,status)
{
  BEG2CRM ! name,status;
}
#define sendEvent(name,status) \
sendEvent(name,status) 

inline contractResponse(msg1,msg2)
{
  CRM2BEG ? msg1(msg2);
}
#define contractResponse(msg1,msg2) \
contractResponse(msg1,msg2)


inline RD_WITH_RP(msg1,msg2,rp)
{
  CRM2BEG! msg1(msg2);
}
#define RD_WITH_RP(msg1,msg2,rp) \
RD_WITH_RP(msg1,msg2,rp) \

inline RD(rp,msg1,msg2)
{
  CRM2BEG! msg1(msg2);
}
#define RD(name,rp,msg1,msg2) \
RD(rp,msg1,msg2) \

inline RD_NEW(msg1,msg2)
{
  CRM2BEG! msg1(msg2);
}
#define RD_NEW(msg1,msg2) \
RD_NEW(msg1,msg2) \

#define NON_C(msg2) else :: \
RULE_DEC_NEW(NCC,msg2) \
fi;

/*printf("NCC: %e", msg); */


#define END(msg) \
::else RD_NEW(NCC,CO); \
fi;

#define RULE_DEC_NEW(msg1,msg2) \
RULE_DEC_NEW(msg1,msg2) \
NON_C(msg2)
 
#define WHEN if

#define SC(name) \
name##_##bo.status==S

#define BF(name) \
name##_##bo.status==BF

#define TF(name) \
name##_##bo.status==TF

#define TO(name) \
name##_##bo.status==TO


#define EVENT(name,msg1,msg2) \
((msg1==1)&&(msg2==1));

/* \
SET_R(name,0); \
SET_O(name,0); \
SET_P(name,0);
*/

/*SET_X1(name,rp);*/
/*SET_P(name,0);*/


/* #define When(name) if ::IS_P(name,name##_##bo.role_pl) -> */ /* working - left as reference*/

/*
 * ====================================================================================
 * Counts the number of arguments TAKES BETWEEN 1-10 ARG This is to declare variable 
 * number of mtypes
 * ====================================================================================
 */
#define RuleMessage(types...) _TYPES_TO_MTYPE_N(gnu_count(types),types)
#define _TYPES_TO_MTYPE_N(n,types...) _TYPES_TO_MTYPE(n,types)
#define _TYPES_TO_MTYPE(n,types...) _TYPES_TO_MTYPE_##n(types)
#define _TYPES_TO_MTYPE_0()  
#define _TYPES_TO_MTYPE_1(x) mtype={x}
#define _TYPES_TO_MTYPE_2(x,y) mtype={x,y}
#define _TYPES_TO_MTYPE_3(x,y,z) mtype={x,y,z}
#define _TYPES_TO_MTYPE_4(a,b,c,d) mtype{a,b,c,d}
#define _TYPES_TO_MTYPE_5(a,b,c,d,e) mtype{a,b,c,d,e}
#define _TYPES_TO_MTYPE_6(a,b,c,d,e,f) mtype{a,b,c,d,e,f}
#define _TYPES_TO_MTYPE_7(a,b,c,d,e,f,g) mtype{a,b,c,d,e,f,g}
#define _TYPES_TO_MTYPE_8(a,b,c,d,e,f,g,i) mtype{a,b,c,d,e,f,g,i}
#define _TYPES_TO_MTYPE_9(a,b,c,d,e,f,g,i,j) mtype{a,b,c,d,e,f,g,i,j}
#define _TYPES_TO_MTYPE_10(a,b,c,d,e,f,g,i,j,k) mtype{a,b,c,d,e,f,g,i,j,k}


/*
 * ====================================================================================
 *
 *  To define role player - SIMILAR TO THE ABOVE
 *
 * ====================================================================================
 */
#define RolePlayer(types...) _ROLE_PLAYER_N(gnu_count(types),types)
#define _ROLE_PLAYER_N(n,types...) _ROLE_PLAYER(n,types)
#define _ROLE_PLAYER(n,types...) _ROLE_PLAYER_##n(types)
#define _ROLE_PLAYER_0()  
#define _ROLE_PLAYER_1(a) mtype={a} \
BITV_32 a##exTrace;
#define _ROLE_PLAYER_2(a,b) mtype={a,b} \
BITV_32 a##exTrace; \
BITV_32 b##exTrace;
#define _ROLE_PLAYER_3(a,b,c) mtype={a,b,c} \
BITV_32 a##exTrace; \
BITV_32 b##exTrace; \
BITV_32 c##exTrace;
#define _ROLE_PLAYER_4(a,b,c,d) mtype={a,b,c,d} \
BITV_32 a##exTrace; \
BITV_32 b##exTrace; \
BITV_32 c##exTrace; \
BITV_32 d##exTrace;
#define _ROLE_PLAYER_5(a,b,c,d,e) mtype={a,b,c,d,e} \
BITV_32 a##exTrace; \
BITV_32 b##exTrace; \
BITV_32 c##exTrace; \
BITV_32 d##exTrace; \
BITV_32 e##exTrace;
#define _ROLE_PLAYER_6(a,b,c,d,e,f) mtype={a,b,c,d,e,f} \
BITV_32 a##exTrace; \
BITV_32 b##exTrace; \
BITV_32 c##exTrace; \
BITV_32 d##exTrace; \
BITV_32 e##exTrace; \
BITV_32 f##exTrace; 
#define _ROLE_PLAYER_7(a,b,c,d,e,f,g) mtype={a,b,c,d,e,f,g} \
BITV_32 a##exTrace; \
BITV_32 b##exTrace; \
BITV_32 c##exTrace; \
BITV_32 d##exTrace; \
BITV_32 e##exTrace; \
BITV_32 f##exTrace; \
BITV_32 g##exTrace;
#define _ROLE_PLAYER_8(a,b,c,d,e,f,g,i) mtype={a,b,c,d,e,f,g,i} \
BITV_32 a##exTrace; \
BITV_32 b##exTrace; \
BITV_32 c##exTrace; \
BITV_32 d##exTrace; \
BITV_32 e##exTrace; \
BITV_32 f##exTrace; \
BITV_32 g##exTrace; \
BITV_32 i##exTrace; 
#define _ROLE_PLAYER_9(a,b,c,d,e,f,g,i,j) mtype={a,b,c,d,e,f,g,i,j} \
BITV_32 a##exTrace; \
BITV_32 b##exTrace; \
BITV_32 c##exTrace; \
BITV_32 d##exTrace; \
BITV_32 e##exTrace; \
BITV_32 f##exTrace; \
BITV_32 g##exTrace; \
BITV_32 i##exTrace; \
BITV_32 j##exTrace;
#define _ROLE_PLAYER_10(a,b,c,d,e,f,g,i,j,k) mtype={a,b,c,d,e,f,g,i,j,k} \
BITV_32 a##exTrace; \
BITV_32 b##exTrace; \
BITV_32 c##exTrace; \
BITV_32 d##exTrace; \
BITV_32 e##exTrace; \
BITV_32 f##exTrace; \
BITV_32 g##exTrace; \
BITV_32 i##exTrace; \
BITV_32 j##exTrace; \
BITV_32 k##exTrace;

/*
 * ====================================================================================
 * DEF_BizOperStatus to define possible status to our operations TAKES BETWEEN 1-4 ARG 
 * ====================================================================================
 */
 
#define DEF_BizOperStatus(types...) _TYPES_TO_STATUS_N(gnu_count(types),types)
#define _TYPES_TO_STATUS_N(n,types...) _TYPES_TO_STATUS(n,types)
#define _TYPES_TO_STATUS(n,types...) _TYPES_TO_STATUS_##n(types)
#define _TYPES_TO_STATUS_0()  
#define _TYPES_TO_STATUS_1(x) mtype={x}
#define _TYPES_TO_STATUS_2(x,y) mtype={x,y}
#define _TYPES_TO_STATUS_3(x,y,z) mtype={x,y,z}
#define _TYPES_TO_STATUS_4(a,b,c,d) mtype{a,b,c,d}
/*
 * ====================================================================================
 * RULE OVERLOADING - it is possible now to call/create RULE up to 8 
 * arguments. RULE(arg1,arg2,arg3,...)
 * ====================================================================================
 */
#define RULE(types...) _TYPES_TO_INLINE_N(gnu_count(types),types)
#define _TYPES_TO_INLINE_N(n,types...) _TYPES_TO_INLINE(n,types)
#define _TYPES_TO_INLINE(n,types...) _TYPES_TO_INLINE_##n(types)
#define _TYPES_TO_INLINE_0() 
#define _TYPES_TO_INLINE_1(x) inline x##_##nil()
#define _TYPES_TO_INLINE_2(x,y) inline x##_##y()
#define _TYPES_TO_INLINE_3(x,y,z) inline x##_##y##_z()
#define _TYPES_TO_INLINE_4(a,b,c,d) inline a##_##b##_##c##_##d()
#define _TYPES_TO_INLINE_5(a,b,c,d,f) inline a##_##b##_##c##_##d##_##f()
#define _TYPES_TO_INLINE_6(a,b,c,d,f,g) inline a##_##b##_##c##_##d##_##f##_##G()
#define _TYPES_TO_INLINE_7(a,b,c,d,f,g,i) inline a##_##b##_##c##_##d##_##f##_##G##_##i()
#define _TYPES_TO_INLINE_8(a,b,c,d,f,g,i,j) inline a##_##b##_##c##_##d##_##f##_##G##_##i##_##j()


/*
 * ====================================================================================
 *                                ContractRule OVERLOADING 
 * ====================================================================================
 */
#define ContractRule(types...) _TYPES_TO_EX_INLINE_N(gnu_count(types),types)
#define _TYPES_TO_EX_INLINE_N(n,types...) _TYPES_TO_EX_INLINE(n,types)
#define _TYPES_TO_EX_INLINE(n,types...) _TYPES_TO_EX_INLINE_##n(types)
#define _TYPES_TO_EX_INLINE_0() 
#define _TYPES_TO_EX_INLINE_1(x) x##_##nil()
#define _TYPES_TO_EX_INLINE_2(x,y) x##_##y()
#define _TYPES_TO_EX_INLINE_3(x,y,z) x##_##y##_z()
#define _TYPES_TO_EX_INLINE_4(a,b,c,d) a##_##b##_##c##_##d()
#define _TYPES_TO_EX_INLINE_5(a,b,c,d,f) a##_##b##_##c##_##d##_##f()
#define _TYPES_TO_EX_INLINE_6(a,b,c,d,f,g) a##_##b##_##c##_##d##_##f##_##G()
#define _TYPES_TO_EX_INLINE_7(a,b,c,d,f,g,i) a##_##b##_##c##_##d##_##f##_##G##_##i()
#define _TYPES_TO_EX_INLINE_8(a,b,c,d,f,g,i,j) a##_##b##_##c##_##d##_##f##_##G##_##i##_##j()

/*
 * ====================================================================================
 *                                INIT OVERLOADING 
 * ====================================================================================
 */
  
#define INIT(types...) _INIT_N(gnu_count(types),types)
#define _INIT_N(n,types...) _INIT(n,types)
#define _INIT(n,types...) _INIT_##n(types)
#define _INIT_2(x,y) INIT_WITH_2( x##_##bo,y )
#define _INIT_5(a,b,c,d,f) INIT_WITH_5( a##_##bo,b,c,d,f ) 

/*
 * ====================================================================================
 *                                      When_Event OVERLOADING 
 * SEE IF WE CAN MAKE THIS POSSIBLE - OR SIMPLY CHANGE IT TO ACCEPT EVENT ONLY WHICH IS
 * ENOUGH TO ACCESS THE REST OF THE DATA.
 *
 * TO BE SEEN LATER !!
 * ====================================================================================
 */
/* SET_STATUS(name,status) recently added */
#define B_E(rp,name,status) \
bizEvent(name); \
SET_STATUS(name,status); \
sendEvent(name,status); \
RuleDecision(rp);

#define B_E_NON(rp,name,status) \
SET_STATUS(name,status); \
sendEvent(name,status); \
RuleDecision(rp); 


inline increment(cntr,stop)
{
  if
     :: cntr<=2 -> cntr=cntr+1;
	 :: else cntr=0 -> stop=1 -> skip;
  fi;
}
#define increment(cntr,stop) \
increment(cntr,stop)


/*  /* I M P O R T A N T */ /*
#define bizEvent_Failure(name,status) \
((name##_##bo.right==1  || name##_##bo.oblig==1 || name##_##bo.prohib==1) && (name##status##stop==0));


#define B_E_F(rp,name,status) \
short name##status##cntr; \
bool name##status##stop; \
bizEvent_Failure(name,status); \
increment(name##status##cntr,name##status##stop); \
name##status##stop==0; \
SET_STATUS(name,status); \
sendEvent(name,status); \
RuleDecision(rp); 

*/

#define CONTRACT(name) \
When_Event(name); \
ContractRule(name)

/*
#define SET_X(name) \
SET_1(executionTrace,name##_##bo.id)
*/

/*
#define SET_X(name) \
RPT(name) \
SET_1(name##_##bo.name,name##_##bo.id)
*/


#define SET_X(name,rp) \
SET_1(rp##exTrace,name##_##bo.id)


/*
#define CONTRACT(types...) _CONTRACT_N(gnu_count(types),types)
#define _CONTRACT_N(n,types...) _CONTRACT(n,types)
#define _CONTRACT(n,types...) _CONTRACT_##n(types)
#define _CONTRACT_0() 
#define _CONTRACT_1(name) name##_##nil() \
When_Event(name,S); \
ContractRule(name)
#define _CONTRACT_2(name,status) x##_##y() \
When_Event(name,status); \
ContractRule(name,status)
#define _CONTRACT_3(name,deadline,status) name##_##deadline() \
When_Event(name,status); \
ContractRule(name,deadline)
#define _CONTRACT_4(a,b,c,d) a##_##b##_##c##_##d() \
When_Event(a,b); \
ContractRule(a,b,c,d)
#define _CONTRACT_5(a,b,c,d,f) a##_##b##_##c##_##d##_##f() \
When_Event(a,b); \
ContractRule(a,b,c,d,f)

*/

/*
inline START()
{
 cntttr=0;
 resetExecutionTrace();
}
#define START() \
START()
*/
RuleMessage(CC,CCR,CCO,CCP,NCC,CO,OCX,CNL,CND,RST);
