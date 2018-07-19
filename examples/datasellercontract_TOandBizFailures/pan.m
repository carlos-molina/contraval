#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM never_0 */
	case 3: // STATE 1 - dataseller.pml:237 - [(((buyrj==1)||((pay==1)||((canc==1)||((rejconfto==1)||((paycancto==1)||((paybizfail==1)||((rejbizfail==1)||((buyreqbizfail==1)||((confbizfail==1)||((cancbizfail==1)||(getvoubizfail==1))))))))))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!(((((int)now.buyrj)==1)||((((int)now.pay)==1)||((((int)now.canc)==1)||((((int)now.rejconfto)==1)||((((int)now.paycancto)==1)||((((int)now.paybizfail)==1)||((((int)now.rejbizfail)==1)||((((int)now.buyreqbizfail)==1)||((((int)now.confbizfail)==1)||((((int)now.cancbizfail)==1)||(((int)now.getvoubizfail)==1)))))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - dataseller.pml:242 - [(((buyrj==1)||((pay==1)||((canc==1)||((rejconfto==1)||((paycancto==1)||((paybizfail==1)||((rejbizfail==1)||((buyreqbizfail==1)||((confbizfail==1)||((cancbizfail==1)||(getvoubizfail==1))))))))))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][8] = 1;
		if (!(((((int)now.buyrj)==1)||((((int)now.pay)==1)||((((int)now.canc)==1)||((((int)now.rejconfto)==1)||((((int)now.paycancto)==1)||((((int)now.paybizfail)==1)||((((int)now.rejbizfail)==1)||((((int)now.buyreqbizfail)==1)||((((int)now.confbizfail)==1)||((((int)now.cancbizfail)==1)||(((int)now.getvoubizfail)==1)))))))))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - dataseller.pml:244 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 6: // STATE 1 - dataseller.pml:218 - [(run BEG())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - dataseller.pml:218 - [(run CRM())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - dataseller.pml:220 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC CRM */
	case 9: // STATE 1 - dataseller.pml:201 - [printf('CONTRACT RULE MANAGER')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("CONTRACT RULE MANAGER");
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 2 - ./BizOperation.h:376 - [(BEG2CRM?[16,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 16 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 3 - ./BizOperation.h:376 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][3] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 12: // STATE 4 - ./BizOperation.h:377 - [(BEG2CRM?[16,BF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 16 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 5 - ./BizOperation.h:377 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][5] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 14: // STATE 6 - ./BizOperation.h:378 - [(BEG2CRM?[16,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 16 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 7 - ./BizOperation.h:378 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][7] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 16: // STATE 8 - ./BizOperation.h:379 - [(BEG2CRM?[16,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 16 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 12)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 9 - ./BizOperation.h:379 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][9] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 18: // STATE 13 - ./rules.h:64 - [((((BUYRQ_bo.right==1)&&((BUYRQ_bo.role_pl==BUYER)==1))&&((BUYRQ_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((((int)now.BUYRQ_bo.right)==1)&&((((int)now.BUYRQ_bo.role_pl)==11)==1))&&((((int)now.BUYRQ_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 14 - ./rules.h:68 - [printf('\\n\\n')] (0:26:0 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(26, 15, 26) */
		reached[1][15] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>buyer</originator>\\n')(26, 16, 26) */
		reached[1][16] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(26, 17, 26) */
		reached[1][17] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>BUYREQ</type>\\n')(26, 18, 26) */
		reached[1][18] = 1;
		Printf("<type>BUYREQ</type>\n");
		/* merge: printf('<status>success</status>\\n')(26, 19, 26) */
		reached[1][19] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('</event>')(26, 20, 26) */
		reached[1][20] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(26, 21, 26) */
		reached[1][21] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 20: // STATE 23 - ./BizOperation.h:261 - [BUYRQ_bo.right = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYRQ_bo.right);
		now.BUYRQ_bo.right = 0;
#ifdef VAR_RANGES
		logval("BUYRQ_bo.right", ((int)now.BUYRQ_bo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 24 - ./BizOperation.h:262 - [assert(!(((BUYRQ_bo.right==1)&&(BUYRQ_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		spin_assert( !(((((int)now.BUYRQ_bo.right)==1)&&(((int)now.BUYRQ_bo.oblig)==1))), " !(((BUYRQ_bo.right==1)&&(BUYRQ_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 25 - ./BizOperation.h:263 - [assert(!(((BUYRQ_bo.right==1)&&(BUYRQ_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		spin_assert( !(((((int)now.BUYRQ_bo.right)==1)&&(((int)now.BUYRQ_bo.prohib)==1))), " !(((BUYRQ_bo.right==1)&&(BUYRQ_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 27 - ./BizOperation.h:284 - [REJ_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = ((int)now.REJ_bo.oblig);
		now.REJ_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("REJ_bo.oblig", ((int)now.REJ_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 28 - ./BizOperation.h:285 - [assert(!(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		spin_assert( !(((((int)now.REJ_bo.oblig)==1)&&(((int)now.REJ_bo.prohib)==1))), " !(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 29 - ./BizOperation.h:286 - [assert(!(((REJ_bo.oblig==1)&&(REJ_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		spin_assert( !(((((int)now.REJ_bo.oblig)==1)&&(((int)now.REJ_bo.right)==1))), " !(((REJ_bo.oblig==1)&&(REJ_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 31 - ./BizOperation.h:284 - [CONF_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)now.CONF_bo.oblig);
		now.CONF_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("CONF_bo.oblig", ((int)now.CONF_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 32 - ./BizOperation.h:285 - [assert(!(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		spin_assert( !(((((int)now.CONF_bo.oblig)==1)&&(((int)now.CONF_bo.prohib)==1))), " !(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 33 - ./BizOperation.h:286 - [assert(!(((CONF_bo.oblig==1)&&(CONF_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		spin_assert( !(((((int)now.CONF_bo.oblig)==1)&&(((int)now.CONF_bo.right)==1))), " !(((CONF_bo.oblig==1)&&(CONF_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 35 - ./BizOperation.h:284 - [REJCONFTO_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		(trpt+1)->bup.oval = ((int)now.REJCONFTO_bo.oblig);
		now.REJCONFTO_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("REJCONFTO_bo.oblig", ((int)now.REJCONFTO_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 36 - ./BizOperation.h:285 - [assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		spin_assert( !(((((int)now.REJCONFTO_bo.oblig)==1)&&(((int)now.REJCONFTO_bo.prohib)==1))), " !(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 37 - ./BizOperation.h:286 - [assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		spin_assert( !(((((int)now.REJCONFTO_bo.oblig)==1)&&(((int)now.REJCONFTO_bo.right)==1))), " !(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 39 - ./rules.h:82 - [BUYERexTrace = (BUYERexTrace|(1<<BUYRQ_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.BUYRQ_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 40 - ./BizOperation.h:411 - [CRM2BEG!8,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 34: // STATE 43 - ./rules.h:85 - [((((BUYRQ_bo.right==1)&&((BUYRQ_bo.role_pl==BUYER)==1))&&((BUYRQ_bo.status==BF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		if (!((((((int)now.BUYRQ_bo.right)==1)&&((((int)now.BUYRQ_bo.role_pl)==11)==1))&&((((int)now.BUYRQ_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 44 - ./rules.h:88 - [printf('\\n\\n')] (0:83:0 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(83, 45, 83) */
		reached[1][45] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>buyer</originator>\\n')(83, 46, 83) */
		reached[1][46] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(83, 47, 83) */
		reached[1][47] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>BUYREQ</type>\\n')(83, 48, 83) */
		reached[1][48] = 1;
		Printf("<type>BUYREQ</type>\n");
		/* merge: printf('<status>bizfail</status>\\n')(83, 49, 83) */
		reached[1][49] = 1;
		Printf("<status>bizfail</status>\n");
		/* merge: printf('</event>')(83, 50, 83) */
		reached[1][50] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(83, 51, 83) */
		reached[1][51] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 36: // STATE 53 - ./rules.h:98 - [((BuyRqFailBefore==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (!((((int)now.BuyRqFailBefore)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 54 - ./rules.h:98 - [BuyRqFailBefore = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		(trpt+1)->bup.oval = ((int)now.BuyRqFailBefore);
		now.BuyRqFailBefore = 1;
#ifdef VAR_RANGES
		logval("BuyRqFailBefore", ((int)now.BuyRqFailBefore));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 55 - ./rules.h:99 - [printf('First BUYREQ-BusinessFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		Printf("First BUYREQ-BusinessFailure");
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 56 - ./rules.h:100 - [BUYERexTrace = (BUYERexTrace|(1<<BUYRQ_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.BUYRQ_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 57 - ./BizOperation.h:411 - [CRM2BEG!8,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 41: // STATE 59 - ./rules.h:103 - [((BuyRqFailBefore==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (!((((int)now.BuyRqFailBefore)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 60 - ./rules.h:104 - [printf('Last BUYREQ-BusinessFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		Printf("Last BUYREQ-BusinessFailure");
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 61 - ./BizOperation.h:261 - [BUYRQ_bo.right = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYRQ_bo.right);
		now.BUYRQ_bo.right = 0;
#ifdef VAR_RANGES
		logval("BUYRQ_bo.right", ((int)now.BUYRQ_bo.right));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 62 - ./BizOperation.h:262 - [assert(!(((BUYRQ_bo.right==1)&&(BUYRQ_bo.oblig==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		spin_assert( !(((((int)now.BUYRQ_bo.right)==1)&&(((int)now.BUYRQ_bo.oblig)==1))), " !(((BUYRQ_bo.right==1)&&(BUYRQ_bo.oblig==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 63 - ./BizOperation.h:263 - [assert(!(((BUYRQ_bo.right==1)&&(BUYRQ_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		spin_assert( !(((((int)now.BUYRQ_bo.right)==1)&&(((int)now.BUYRQ_bo.prohib)==1))), " !(((BUYRQ_bo.right==1)&&(BUYRQ_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 65 - ./BizOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 67 - ./rules.h:106 - [BUYERexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 68 - ./BizOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 70 - ./rules.h:107 - [STOREexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		(trpt+1)->bup.oval = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 71 - ./rules.h:109 - [printf('\\n\\n')] (0:80:0 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(80, 72, 80) */
		reached[1][72] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>reset</originator>\\n')(80, 73, 80) */
		reached[1][73] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(80, 74, 80) */
		reached[1][74] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(80, 75, 80) */
		reached[1][75] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(80, 76, 80) */
		reached[1][76] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('</event>')(80, 77, 80) */
		reached[1][77] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(80, 78, 80) */
		reached[1][78] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 51: // STATE 80 - ./rules.h:117 - [BUYERexTrace = (BUYERexTrace|(1<<BUYRQ_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.BUYRQ_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 81 - ./BizOperation.h:411 - [CRM2BEG!8,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][81] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 1, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 53: // STATE 87 - ./BizOperation.h:419 - [CRM2BEG!5,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 5, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 54: // STATE 92 - ./BizOperation.h:376 - [(BEG2CRM?[17,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][92] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 93 - ./BizOperation.h:376 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][93] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 56: // STATE 94 - ./BizOperation.h:377 - [(BEG2CRM?[17,BF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][94] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 95 - ./BizOperation.h:377 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][95] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 58: // STATE 96 - ./BizOperation.h:378 - [(BEG2CRM?[17,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 97 - ./BizOperation.h:378 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][97] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 60: // STATE 98 - ./BizOperation.h:379 - [(BEG2CRM?[17,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 17 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 12)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 99 - ./BizOperation.h:379 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][99] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 62: // STATE 103 - ./rules.h:133 - [((((REJ_bo.oblig==1)&&((REJ_bo.role_pl==STORE)==1))&&((REJ_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		if (!((((((int)now.REJ_bo.oblig)==1)&&((((int)now.REJ_bo.role_pl)==10)==1))&&((((int)now.REJ_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 104 - ./rules.h:136 - [printf('\\n\\n')] (0:117:0 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(117, 105, 117) */
		reached[1][105] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>store</originator>\\n')(117, 106, 117) */
		reached[1][106] = 1;
		Printf("<originator>store</originator>\n");
		/* merge: printf('<responder>buyer</responder>\\n')(117, 107, 117) */
		reached[1][107] = 1;
		Printf("<responder>buyer</responder>\n");
		/* merge: printf('<type>BUYREJ</type>\\n')(117, 108, 117) */
		reached[1][108] = 1;
		Printf("<type>BUYREJ</type>\n");
		/* merge: printf('<status>success</status>\\n')(117, 109, 117) */
		reached[1][109] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('</event>')(117, 110, 117) */
		reached[1][110] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(117, 111, 117) */
		reached[1][111] = 1;
		Printf("\n\n");
		/* merge: printf('REJ-Success')(117, 113, 117) */
		reached[1][113] = 1;
		Printf("REJ-Success");
		_m = 3; goto P999; /* 8 */
	case 64: // STATE 114 - ./BizOperation.h:284 - [REJ_bo.oblig = 0] (0:121:1 - 1)
		IfNotBlocked
		reached[1][114] = 1;
		(trpt+1)->bup.oval = ((int)now.REJ_bo.oblig);
		now.REJ_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("REJ_bo.oblig", ((int)now.REJ_bo.oblig));
#endif
		;
		/* merge: assert(!(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1))))(121, 115, 121) */
		reached[1][115] = 1;
		spin_assert( !(((((int)now.REJ_bo.oblig)==1)&&(((int)now.REJ_bo.prohib)==1))), " !(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((REJ_bo.oblig==1)&&(REJ_bo.right==1))))(121, 116, 121) */
		reached[1][116] = 1;
		spin_assert( !(((((int)now.REJ_bo.oblig)==1)&&(((int)now.REJ_bo.right)==1))), " !(((REJ_bo.oblig==1)&&(REJ_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 65: // STATE 118 - ./BizOperation.h:284 - [CONF_bo.oblig = 0] (0:125:1 - 1)
		IfNotBlocked
		reached[1][118] = 1;
		(trpt+1)->bup.oval = ((int)now.CONF_bo.oblig);
		now.CONF_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CONF_bo.oblig", ((int)now.CONF_bo.oblig));
#endif
		;
		/* merge: assert(!(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1))))(125, 119, 125) */
		reached[1][119] = 1;
		spin_assert( !(((((int)now.CONF_bo.oblig)==1)&&(((int)now.CONF_bo.prohib)==1))), " !(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((CONF_bo.oblig==1)&&(CONF_bo.right==1))))(125, 120, 125) */
		reached[1][120] = 1;
		spin_assert( !(((((int)now.CONF_bo.oblig)==1)&&(((int)now.CONF_bo.right)==1))), " !(((CONF_bo.oblig==1)&&(CONF_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 66: // STATE 122 - ./BizOperation.h:284 - [REJCONFTO_bo.oblig = 0] (0:127:1 - 1)
		IfNotBlocked
		reached[1][122] = 1;
		(trpt+1)->bup.oval = ((int)now.REJCONFTO_bo.oblig);
		now.REJCONFTO_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("REJCONFTO_bo.oblig", ((int)now.REJCONFTO_bo.oblig));
#endif
		;
		/* merge: assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1))))(127, 123, 127) */
		reached[1][123] = 1;
		spin_assert( !(((((int)now.REJCONFTO_bo.oblig)==1)&&(((int)now.REJCONFTO_bo.prohib)==1))), " !(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1))))(127, 124, 127) */
		reached[1][124] = 1;
		spin_assert( !(((((int)now.REJCONFTO_bo.oblig)==1)&&(((int)now.REJCONFTO_bo.right)==1))), " !(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 67: // STATE 126 - ./BizOperation.h:55 - [cntttr = 0] (0:130:2 - 1)
		IfNotBlocked
		reached[1][126] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: BUYERexTrace = 0(130, 128, 130) */
		reached[1][128] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 68: // STATE 129 - ./BizOperation.h:55 - [cntttr = 0] (0:140:2 - 1)
		IfNotBlocked
		reached[1][129] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: STOREexTrace = 0(140, 131, 140) */
		reached[1][131] = 1;
		(trpt+1)->bup.ovals[1] = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 69: // STATE 132 - ./rules.h:152 - [printf('\\n\\n')] (0:143:1 - 1)
		IfNotBlocked
		reached[1][132] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(143, 133, 143) */
		reached[1][133] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>reset</originator>\\n')(143, 134, 143) */
		reached[1][134] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(143, 135, 143) */
		reached[1][135] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(143, 136, 143) */
		reached[1][136] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(143, 137, 143) */
		reached[1][137] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('</event>')(143, 138, 143) */
		reached[1][138] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(143, 139, 143) */
		reached[1][139] = 1;
		Printf("\n\n");
		/* merge: STOREexTrace = (STOREexTrace|(1<<REJ_bo.id))(143, 141, 143) */
		reached[1][141] = 1;
		(trpt+1)->bup.oval = now.STOREexTrace;
		now.STOREexTrace = (now.STOREexTrace|(1<<((int)now.REJ_bo.id)));
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 70: // STATE 142 - ./BizOperation.h:411 - [CRM2BEG!7,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][142] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 1, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 71: // STATE 200 - ./rules.h:200 - [.(goto)] (0:830:1 - 5)
		IfNotBlocked
		reached[1][200] = 1;
		;
		/* merge: buyrj = 1(830, 202, 830) */
		reached[1][202] = 1;
		(trpt+1)->bup.oval = ((int)now.buyrj);
		now.buyrj = 1;
#ifdef VAR_RANGES
		logval("buyrj", ((int)now.buyrj));
#endif
		;
		/* merge: .(goto)(0, 831, 830) */
		reached[1][831] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 72: // STATE 145 - ./rules.h:163 - [((((REJ_bo.oblig==1)&&((REJ_bo.role_pl==STORE)==1))&&((REJ_bo.status==BF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][145] = 1;
		if (!((((((int)now.REJ_bo.oblig)==1)&&((((int)now.REJ_bo.role_pl)==10)==1))&&((((int)now.REJ_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 146 - ./rules.h:166 - [printf('\\n\\n')] (0:193:0 - 1)
		IfNotBlocked
		reached[1][146] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(193, 147, 193) */
		reached[1][147] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>store</originator>\\n')(193, 148, 193) */
		reached[1][148] = 1;
		Printf("<originator>store</originator>\n");
		/* merge: printf('<responder>buyer</responder>\\n')(193, 149, 193) */
		reached[1][149] = 1;
		Printf("<responder>buyer</responder>\n");
		/* merge: printf('<type>BUYREJ</type>\\n')(193, 150, 193) */
		reached[1][150] = 1;
		Printf("<type>BUYREJ</type>\n");
		/* merge: printf('<status>bizfail</status>\\n')(193, 151, 193) */
		reached[1][151] = 1;
		Printf("<status>bizfail</status>\n");
		/* merge: printf('</event>')(193, 152, 193) */
		reached[1][152] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(193, 153, 193) */
		reached[1][153] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 74: // STATE 155 - ./rules.h:176 - [((RejFailBefore==0))] (160:0:2 - 1)
		IfNotBlocked
		reached[1][155] = 1;
		if (!((((int)now.RejFailBefore)==0)))
			continue;
		/* merge: RejFailBefore = 1(160, 156, 160) */
		reached[1][156] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.RejFailBefore);
		now.RejFailBefore = 1;
#ifdef VAR_RANGES
		logval("RejFailBefore", ((int)now.RejFailBefore));
#endif
		;
		/* merge: printf('First Rej-BusinessFailure')(160, 157, 160) */
		reached[1][157] = 1;
		Printf("First Rej-BusinessFailure");
		/* merge: STOREexTrace = (STOREexTrace|(1<<REJ_bo.id))(160, 158, 160) */
		reached[1][158] = 1;
		(trpt+1)->bup.ovals[1] = now.STOREexTrace;
		now.STOREexTrace = (now.STOREexTrace|(1<<((int)now.REJ_bo.id)));
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 75: // STATE 159 - ./BizOperation.h:411 - [CRM2BEG!7,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][159] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 76: // STATE 161 - ./rules.h:181 - [((RejFailBefore==1))] (166:0:0 - 1)
		IfNotBlocked
		reached[1][161] = 1;
		if (!((((int)now.RejFailBefore)==1)))
			continue;
		/* merge: printf('Last BUYREJ-BusinessFailure')(0, 162, 166) */
		reached[1][162] = 1;
		Printf("Last BUYREJ-BusinessFailure");
		_m = 3; goto P999; /* 1 */
	case 77: // STATE 163 - ./BizOperation.h:284 - [REJ_bo.oblig = 0] (0:170:1 - 1)
		IfNotBlocked
		reached[1][163] = 1;
		(trpt+1)->bup.oval = ((int)now.REJ_bo.oblig);
		now.REJ_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("REJ_bo.oblig", ((int)now.REJ_bo.oblig));
#endif
		;
		/* merge: assert(!(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1))))(170, 164, 170) */
		reached[1][164] = 1;
		spin_assert( !(((((int)now.REJ_bo.oblig)==1)&&(((int)now.REJ_bo.prohib)==1))), " !(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((REJ_bo.oblig==1)&&(REJ_bo.right==1))))(170, 165, 170) */
		reached[1][165] = 1;
		spin_assert( !(((((int)now.REJ_bo.oblig)==1)&&(((int)now.REJ_bo.right)==1))), " !(((REJ_bo.oblig==1)&&(REJ_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 78: // STATE 167 - ./BizOperation.h:284 - [CONF_bo.oblig = 0] (0:174:1 - 1)
		IfNotBlocked
		reached[1][167] = 1;
		(trpt+1)->bup.oval = ((int)now.CONF_bo.oblig);
		now.CONF_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CONF_bo.oblig", ((int)now.CONF_bo.oblig));
#endif
		;
		/* merge: assert(!(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1))))(174, 168, 174) */
		reached[1][168] = 1;
		spin_assert( !(((((int)now.CONF_bo.oblig)==1)&&(((int)now.CONF_bo.prohib)==1))), " !(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((CONF_bo.oblig==1)&&(CONF_bo.right==1))))(174, 169, 174) */
		reached[1][169] = 1;
		spin_assert( !(((((int)now.CONF_bo.oblig)==1)&&(((int)now.CONF_bo.right)==1))), " !(((CONF_bo.oblig==1)&&(CONF_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 79: // STATE 171 - ./BizOperation.h:284 - [REJCONFTO_bo.oblig = 0] (0:176:1 - 1)
		IfNotBlocked
		reached[1][171] = 1;
		(trpt+1)->bup.oval = ((int)now.REJCONFTO_bo.oblig);
		now.REJCONFTO_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("REJCONFTO_bo.oblig", ((int)now.REJCONFTO_bo.oblig));
#endif
		;
		/* merge: assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1))))(176, 172, 176) */
		reached[1][172] = 1;
		spin_assert( !(((((int)now.REJCONFTO_bo.oblig)==1)&&(((int)now.REJCONFTO_bo.prohib)==1))), " !(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1))))(176, 173, 176) */
		reached[1][173] = 1;
		spin_assert( !(((((int)now.REJCONFTO_bo.oblig)==1)&&(((int)now.REJCONFTO_bo.right)==1))), " !(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 80: // STATE 175 - ./BizOperation.h:55 - [cntttr = 0] (0:179:2 - 1)
		IfNotBlocked
		reached[1][175] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: BUYERexTrace = 0(179, 177, 179) */
		reached[1][177] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 81: // STATE 178 - ./BizOperation.h:55 - [cntttr = 0] (0:189:2 - 1)
		IfNotBlocked
		reached[1][178] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: STOREexTrace = 0(189, 180, 189) */
		reached[1][180] = 1;
		(trpt+1)->bup.ovals[1] = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 82: // STATE 181 - ./rules.h:189 - [printf('\\n\\n')] (0:192:1 - 1)
		IfNotBlocked
		reached[1][181] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(192, 182, 192) */
		reached[1][182] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>reset</originator>\\n')(192, 183, 192) */
		reached[1][183] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(192, 184, 192) */
		reached[1][184] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(192, 185, 192) */
		reached[1][185] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(192, 186, 192) */
		reached[1][186] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('</event>')(192, 187, 192) */
		reached[1][187] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(192, 188, 192) */
		reached[1][188] = 1;
		Printf("\n\n");
		/* merge: STOREexTrace = (STOREexTrace|(1<<REJ_bo.id))(192, 190, 192) */
		reached[1][190] = 1;
		(trpt+1)->bup.oval = now.STOREexTrace;
		now.STOREexTrace = (now.STOREexTrace|(1<<((int)now.REJ_bo.id)));
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 83: // STATE 191 - ./BizOperation.h:411 - [CRM2BEG!7,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][191] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 1, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 84: // STATE 197 - ./BizOperation.h:419 - [CRM2BEG!5,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][197] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 5, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 85: // STATE 204 - ./BizOperation.h:376 - [(BEG2CRM?[18,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][204] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 205 - ./BizOperation.h:376 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][205] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 87: // STATE 206 - ./BizOperation.h:377 - [(BEG2CRM?[18,BF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][206] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 207 - ./BizOperation.h:377 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][207] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 89: // STATE 208 - ./BizOperation.h:378 - [(BEG2CRM?[18,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][208] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 209 - ./BizOperation.h:378 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][209] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 91: // STATE 210 - ./BizOperation.h:379 - [(BEG2CRM?[18,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][210] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 18 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 12)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 211 - ./BizOperation.h:379 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][211] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 93: // STATE 215 - ./rules.h:212 - [((((CONF_bo.oblig==1)&&((CONF_bo.role_pl==STORE)==1))&&((CONF_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][215] = 1;
		if (!((((((int)now.CONF_bo.oblig)==1)&&((((int)now.CONF_bo.role_pl)==10)==1))&&((((int)now.CONF_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 216 - ./rules.h:215 - [printf('\\n\\n')] (0:229:0 - 1)
		IfNotBlocked
		reached[1][216] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(229, 217, 229) */
		reached[1][217] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>store</originator>\\n')(229, 218, 229) */
		reached[1][218] = 1;
		Printf("<originator>store</originator>\n");
		/* merge: printf('<responder>buyer</responder>\\n')(229, 219, 229) */
		reached[1][219] = 1;
		Printf("<responder>buyer</responder>\n");
		/* merge: printf('<type>BUYCONF</type>\\n')(229, 220, 229) */
		reached[1][220] = 1;
		Printf("<type>BUYCONF</type>\n");
		/* merge: printf('<status>success</status>\\n')(229, 221, 229) */
		reached[1][221] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('</event>')(229, 222, 229) */
		reached[1][222] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(229, 223, 229) */
		reached[1][223] = 1;
		Printf("\n\n");
		/* merge: printf('CONF-Success')(229, 225, 229) */
		reached[1][225] = 1;
		Printf("CONF-Success");
		_m = 3; goto P999; /* 8 */
	case 95: // STATE 226 - ./BizOperation.h:284 - [REJ_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][226] = 1;
		(trpt+1)->bup.oval = ((int)now.REJ_bo.oblig);
		now.REJ_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("REJ_bo.oblig", ((int)now.REJ_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 227 - ./BizOperation.h:285 - [assert(!(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][227] = 1;
		spin_assert( !(((((int)now.REJ_bo.oblig)==1)&&(((int)now.REJ_bo.prohib)==1))), " !(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 228 - ./BizOperation.h:286 - [assert(!(((REJ_bo.oblig==1)&&(REJ_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][228] = 1;
		spin_assert( !(((((int)now.REJ_bo.oblig)==1)&&(((int)now.REJ_bo.right)==1))), " !(((REJ_bo.oblig==1)&&(REJ_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 230 - ./BizOperation.h:284 - [CONF_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][230] = 1;
		(trpt+1)->bup.oval = ((int)now.CONF_bo.oblig);
		now.CONF_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CONF_bo.oblig", ((int)now.CONF_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 231 - ./BizOperation.h:285 - [assert(!(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][231] = 1;
		spin_assert( !(((((int)now.CONF_bo.oblig)==1)&&(((int)now.CONF_bo.prohib)==1))), " !(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 232 - ./BizOperation.h:286 - [assert(!(((CONF_bo.oblig==1)&&(CONF_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][232] = 1;
		spin_assert( !(((((int)now.CONF_bo.oblig)==1)&&(((int)now.CONF_bo.right)==1))), " !(((CONF_bo.oblig==1)&&(CONF_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 234 - ./BizOperation.h:284 - [REJCONFTO_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][234] = 1;
		(trpt+1)->bup.oval = ((int)now.REJCONFTO_bo.oblig);
		now.REJCONFTO_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("REJCONFTO_bo.oblig", ((int)now.REJCONFTO_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: // STATE 235 - ./BizOperation.h:285 - [assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][235] = 1;
		spin_assert( !(((((int)now.REJCONFTO_bo.oblig)==1)&&(((int)now.REJCONFTO_bo.prohib)==1))), " !(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 236 - ./BizOperation.h:286 - [assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][236] = 1;
		spin_assert( !(((((int)now.REJCONFTO_bo.oblig)==1)&&(((int)now.REJCONFTO_bo.right)==1))), " !(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 104: // STATE 238 - ./BizOperation.h:284 - [PAY_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][238] = 1;
		(trpt+1)->bup.oval = ((int)now.PAY_bo.oblig);
		now.PAY_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("PAY_bo.oblig", ((int)now.PAY_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 239 - ./BizOperation.h:285 - [assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][239] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.prohib)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 240 - ./BizOperation.h:286 - [assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][240] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.right)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 242 - ./BizOperation.h:284 - [CANC_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][242] = 1;
		(trpt+1)->bup.oval = ((int)now.CANC_bo.oblig);
		now.CANC_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("CANC_bo.oblig", ((int)now.CANC_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: // STATE 243 - ./BizOperation.h:285 - [assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][243] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.prohib)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 244 - ./BizOperation.h:286 - [assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][244] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.right)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 246 - ./BizOperation.h:284 - [PAYCANCTO_bo.oblig = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][246] = 1;
		(trpt+1)->bup.oval = ((int)now.PAYCANCTO_bo.oblig);
		now.PAYCANCTO_bo.oblig = 1;
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.oblig", ((int)now.PAYCANCTO_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 247 - ./BizOperation.h:285 - [assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][247] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.prohib)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 248 - ./BizOperation.h:286 - [assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][248] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.right)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 250 - ./rules.h:232 - [STOREexTrace = (STOREexTrace|(1<<CONF_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][250] = 1;
		(trpt+1)->bup.oval = now.STOREexTrace;
		now.STOREexTrace = (now.STOREexTrace|(1<<((int)now.CONF_bo.id)));
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 251 - ./BizOperation.h:411 - [CRM2BEG!7,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][251] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 115: // STATE 254 - ./rules.h:235 - [((((CONF_bo.oblig==1)&&((CONF_bo.role_pl==STORE)==1))&&((CONF_bo.status==BF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][254] = 1;
		if (!((((((int)now.CONF_bo.oblig)==1)&&((((int)now.CONF_bo.role_pl)==10)==1))&&((((int)now.CONF_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 255 - ./rules.h:238 - [printf('\\n\\n')] (0:302:0 - 1)
		IfNotBlocked
		reached[1][255] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(302, 256, 302) */
		reached[1][256] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>store</originator>\\n')(302, 257, 302) */
		reached[1][257] = 1;
		Printf("<originator>store</originator>\n");
		/* merge: printf('<responder>buyer</responder>\\n')(302, 258, 302) */
		reached[1][258] = 1;
		Printf("<responder>buyer</responder>\n");
		/* merge: printf('<type>BUYCONF</type>\\n')(302, 259, 302) */
		reached[1][259] = 1;
		Printf("<type>BUYCONF</type>\n");
		/* merge: printf('<status>bizfail</status>\\n')(302, 260, 302) */
		reached[1][260] = 1;
		Printf("<status>bizfail</status>\n");
		/* merge: printf('</event>')(302, 261, 302) */
		reached[1][261] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(302, 262, 302) */
		reached[1][262] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 117: // STATE 264 - ./rules.h:248 - [((ConfFailBefore==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][264] = 1;
		if (!((((int)now.ConfFailBefore)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 265 - ./rules.h:248 - [ConfFailBefore = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][265] = 1;
		(trpt+1)->bup.oval = ((int)now.ConfFailBefore);
		now.ConfFailBefore = 1;
#ifdef VAR_RANGES
		logval("ConfFailBefore", ((int)now.ConfFailBefore));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 266 - ./rules.h:249 - [printf('First BuyConf-BusinessFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][266] = 1;
		Printf("First BuyConf-BusinessFailure");
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 267 - ./rules.h:250 - [STOREexTrace = (STOREexTrace|(1<<CONF_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][267] = 1;
		(trpt+1)->bup.oval = now.STOREexTrace;
		now.STOREexTrace = (now.STOREexTrace|(1<<((int)now.CONF_bo.id)));
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 268 - ./BizOperation.h:411 - [CRM2BEG!7,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][268] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 122: // STATE 270 - ./rules.h:253 - [((ConfFailBefore==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][270] = 1;
		if (!((((int)now.ConfFailBefore)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 271 - ./rules.h:254 - [printf('Last CONF-BusinessFailure')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][271] = 1;
		Printf("Last CONF-BusinessFailure");
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 272 - ./BizOperation.h:284 - [REJ_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][272] = 1;
		(trpt+1)->bup.oval = ((int)now.REJ_bo.oblig);
		now.REJ_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("REJ_bo.oblig", ((int)now.REJ_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 273 - ./BizOperation.h:285 - [assert(!(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][273] = 1;
		spin_assert( !(((((int)now.REJ_bo.oblig)==1)&&(((int)now.REJ_bo.prohib)==1))), " !(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 274 - ./BizOperation.h:286 - [assert(!(((REJ_bo.oblig==1)&&(REJ_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][274] = 1;
		spin_assert( !(((((int)now.REJ_bo.oblig)==1)&&(((int)now.REJ_bo.right)==1))), " !(((REJ_bo.oblig==1)&&(REJ_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 276 - ./BizOperation.h:284 - [CONF_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][276] = 1;
		(trpt+1)->bup.oval = ((int)now.CONF_bo.oblig);
		now.CONF_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CONF_bo.oblig", ((int)now.CONF_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 277 - ./BizOperation.h:285 - [assert(!(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][277] = 1;
		spin_assert( !(((((int)now.CONF_bo.oblig)==1)&&(((int)now.CONF_bo.prohib)==1))), " !(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 278 - ./BizOperation.h:286 - [assert(!(((CONF_bo.oblig==1)&&(CONF_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][278] = 1;
		spin_assert( !(((((int)now.CONF_bo.oblig)==1)&&(((int)now.CONF_bo.right)==1))), " !(((CONF_bo.oblig==1)&&(CONF_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 280 - ./BizOperation.h:284 - [REJCONFTO_bo.oblig = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][280] = 1;
		(trpt+1)->bup.oval = ((int)now.REJCONFTO_bo.oblig);
		now.REJCONFTO_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("REJCONFTO_bo.oblig", ((int)now.REJCONFTO_bo.oblig));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 281 - ./BizOperation.h:285 - [assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][281] = 1;
		spin_assert( !(((((int)now.REJCONFTO_bo.oblig)==1)&&(((int)now.REJCONFTO_bo.prohib)==1))), " !(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 282 - ./BizOperation.h:286 - [assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][282] = 1;
		spin_assert( !(((((int)now.REJCONFTO_bo.oblig)==1)&&(((int)now.REJCONFTO_bo.right)==1))), " !(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 284 - ./BizOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][284] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 286 - ./rules.h:258 - [BUYERexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][286] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 287 - ./BizOperation.h:55 - [cntttr = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][287] = 1;
		(trpt+1)->bup.oval = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 289 - ./rules.h:259 - [STOREexTrace = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][289] = 1;
		(trpt+1)->bup.oval = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 290 - ./rules.h:261 - [printf('\\n\\n')] (0:299:0 - 1)
		IfNotBlocked
		reached[1][290] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(299, 291, 299) */
		reached[1][291] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>reset</originator>\\n')(299, 292, 299) */
		reached[1][292] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(299, 293, 299) */
		reached[1][293] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(299, 294, 299) */
		reached[1][294] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(299, 295, 299) */
		reached[1][295] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('</event>')(299, 296, 299) */
		reached[1][296] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(299, 297, 299) */
		reached[1][297] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 138: // STATE 299 - ./rules.h:269 - [STOREexTrace = (STOREexTrace|(1<<CONF_bo.id))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][299] = 1;
		(trpt+1)->bup.oval = now.STOREexTrace;
		now.STOREexTrace = (now.STOREexTrace|(1<<((int)now.CONF_bo.id)));
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 300 - ./BizOperation.h:411 - [CRM2BEG!7,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][300] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 1, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 140: // STATE 306 - ./BizOperation.h:419 - [CRM2BEG!5,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][306] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 5, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 141: // STATE 311 - ./BizOperation.h:376 - [(BEG2CRM?[19,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][311] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 312 - ./BizOperation.h:376 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][312] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 143: // STATE 313 - ./BizOperation.h:377 - [(BEG2CRM?[19,BF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][313] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 314 - ./BizOperation.h:377 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][314] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 145: // STATE 315 - ./BizOperation.h:378 - [(BEG2CRM?[19,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][315] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 316 - ./BizOperation.h:378 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][316] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 147: // STATE 317 - ./BizOperation.h:379 - [(BEG2CRM?[19,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][317] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 19 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 12)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 318 - ./BizOperation.h:379 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][318] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 149: // STATE 322 - ./rules.h:285 - [((((PAY_bo.oblig==1)&&((PAY_bo.role_pl==BUYER)==1))&&((PAY_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][322] = 1;
		if (!((((((int)now.PAY_bo.oblig)==1)&&((((int)now.PAY_bo.role_pl)==11)==1))&&((((int)now.PAY_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 323 - ./rules.h:289 - [printf('\\n\\n')] (0:372:0 - 1)
		IfNotBlocked
		reached[1][323] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(372, 324, 372) */
		reached[1][324] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>buyer</originator>\\n')(372, 325, 372) */
		reached[1][325] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(372, 326, 372) */
		reached[1][326] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>BUYPAY</type>\\n')(372, 327, 372) */
		reached[1][327] = 1;
		Printf("<type>BUYPAY</type>\n");
		/* merge: printf('<status>success</status>\\n')(372, 328, 372) */
		reached[1][328] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('</event>')(372, 329, 372) */
		reached[1][329] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(372, 330, 372) */
		reached[1][330] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 151: // STATE 332 - ./BizOperation.h:284 - [PAY_bo.oblig = 0] (0:339:1 - 1)
		IfNotBlocked
		reached[1][332] = 1;
		(trpt+1)->bup.oval = ((int)now.PAY_bo.oblig);
		now.PAY_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAY_bo.oblig", ((int)now.PAY_bo.oblig));
#endif
		;
		/* merge: assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))(339, 333, 339) */
		reached[1][333] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.prohib)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))(339, 334, 339) */
		reached[1][334] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.right)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 152: // STATE 336 - ./BizOperation.h:284 - [CANC_bo.oblig = 0] (0:343:1 - 1)
		IfNotBlocked
		reached[1][336] = 1;
		(trpt+1)->bup.oval = ((int)now.CANC_bo.oblig);
		now.CANC_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CANC_bo.oblig", ((int)now.CANC_bo.oblig));
#endif
		;
		/* merge: assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))(343, 337, 343) */
		reached[1][337] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.prohib)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))(343, 338, 343) */
		reached[1][338] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.right)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 153: // STATE 340 - ./BizOperation.h:284 - [PAYCANCTO_bo.oblig = 0] (0:347:1 - 1)
		IfNotBlocked
		reached[1][340] = 1;
		(trpt+1)->bup.oval = ((int)now.PAYCANCTO_bo.oblig);
		now.PAYCANCTO_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.oblig", ((int)now.PAYCANCTO_bo.oblig));
#endif
		;
		/* merge: assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))(347, 341, 347) */
		reached[1][341] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.prohib)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))(347, 342, 347) */
		reached[1][342] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.right)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 154: // STATE 344 - ./BizOperation.h:261 - [GETVOU_bo.right = 1] (0:351:3 - 1)
		IfNotBlocked
		reached[1][344] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.GETVOU_bo.right);
		now.GETVOU_bo.right = 1;
#ifdef VAR_RANGES
		logval("GETVOU_bo.right", ((int)now.GETVOU_bo.right));
#endif
		;
		/* merge: assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1))))(351, 345, 351) */
		reached[1][345] = 1;
		spin_assert( !(((((int)now.GETVOU_bo.right)==1)&&(((int)now.GETVOU_bo.oblig)==1))), " !(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1)))", II, tt, t);
		/* merge: assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1))))(351, 346, 351) */
		reached[1][346] = 1;
		spin_assert( !(((((int)now.GETVOU_bo.right)==1)&&(((int)now.GETVOU_bo.prohib)==1))), " !(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1)))", II, tt, t);
		/* merge: payNotification = 0(351, 348, 351) */
		reached[1][348] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.payNotification);
		now.payNotification = 0;
#ifdef VAR_RANGES
		logval("payNotification", ((int)now.payNotification));
#endif
		;
		/* merge: BUYERexTrace = (BUYERexTrace|(1<<PAY_bo.id))(351, 349, 351) */
		reached[1][349] = 1;
		(trpt+1)->bup.ovals[2] = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.PAY_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 155: // STATE 350 - ./BizOperation.h:411 - [CRM2BEG!7,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][350] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 156: // STATE 352 - ./BizOperation.h:284 - [PAY_bo.oblig = 0] (0:359:1 - 1)
		IfNotBlocked
		reached[1][352] = 1;
		(trpt+1)->bup.oval = ((int)now.PAY_bo.oblig);
		now.PAY_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAY_bo.oblig", ((int)now.PAY_bo.oblig));
#endif
		;
		/* merge: assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))(359, 353, 359) */
		reached[1][353] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.prohib)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))(359, 354, 359) */
		reached[1][354] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.right)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 157: // STATE 356 - ./BizOperation.h:284 - [CANC_bo.oblig = 0] (0:363:1 - 1)
		IfNotBlocked
		reached[1][356] = 1;
		(trpt+1)->bup.oval = ((int)now.CANC_bo.oblig);
		now.CANC_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CANC_bo.oblig", ((int)now.CANC_bo.oblig));
#endif
		;
		/* merge: assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))(363, 357, 363) */
		reached[1][357] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.prohib)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))(363, 358, 363) */
		reached[1][358] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.right)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 158: // STATE 360 - ./BizOperation.h:284 - [PAYCANCTO_bo.oblig = 0] (0:367:1 - 1)
		IfNotBlocked
		reached[1][360] = 1;
		(trpt+1)->bup.oval = ((int)now.PAYCANCTO_bo.oblig);
		now.PAYCANCTO_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.oblig", ((int)now.PAYCANCTO_bo.oblig));
#endif
		;
		/* merge: assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))(367, 361, 367) */
		reached[1][361] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.prohib)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))(367, 362, 367) */
		reached[1][362] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.right)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 159: // STATE 364 - ./BizOperation.h:261 - [GETVOU_bo.right = 1] (0:371:3 - 1)
		IfNotBlocked
		reached[1][364] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.GETVOU_bo.right);
		now.GETVOU_bo.right = 1;
#ifdef VAR_RANGES
		logval("GETVOU_bo.right", ((int)now.GETVOU_bo.right));
#endif
		;
		/* merge: assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1))))(371, 365, 371) */
		reached[1][365] = 1;
		spin_assert( !(((((int)now.GETVOU_bo.right)==1)&&(((int)now.GETVOU_bo.oblig)==1))), " !(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1)))", II, tt, t);
		/* merge: assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1))))(371, 366, 371) */
		reached[1][366] = 1;
		spin_assert( !(((((int)now.GETVOU_bo.right)==1)&&(((int)now.GETVOU_bo.prohib)==1))), " !(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1)))", II, tt, t);
		/* merge: payNotification = 1(371, 368, 371) */
		reached[1][368] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.payNotification);
		now.payNotification = 1;
#ifdef VAR_RANGES
		logval("payNotification", ((int)now.payNotification));
#endif
		;
		/* merge: BUYERexTrace = (BUYERexTrace|(1<<PAY_bo.id))(371, 369, 371) */
		reached[1][369] = 1;
		(trpt+1)->bup.ovals[2] = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.PAY_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 160: // STATE 370 - ./BizOperation.h:411 - [CRM2BEG!7,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][370] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 161: // STATE 430 - ./rules.h:353 - [.(goto)] (0:830:1 - 7)
		IfNotBlocked
		reached[1][430] = 1;
		;
		/* merge: pay = 1(830, 432, 830) */
		reached[1][432] = 1;
		(trpt+1)->bup.oval = ((int)now.pay);
		now.pay = 1;
#ifdef VAR_RANGES
		logval("pay", ((int)now.pay));
#endif
		;
		/* merge: .(goto)(0, 831, 830) */
		reached[1][831] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 162: // STATE 375 - ./rules.h:316 - [((((PAY_bo.oblig==1)&&((PAY_bo.role_pl==BUYER)==1))&&((PAY_bo.status==BF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][375] = 1;
		if (!((((((int)now.PAY_bo.oblig)==1)&&((((int)now.PAY_bo.role_pl)==11)==1))&&((((int)now.PAY_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 376 - ./rules.h:319 - [printf('\\n\\n')] (0:423:0 - 1)
		IfNotBlocked
		reached[1][376] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(423, 377, 423) */
		reached[1][377] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>buyer</originator>\\n')(423, 378, 423) */
		reached[1][378] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(423, 379, 423) */
		reached[1][379] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>BUYPAY</type>\\n')(423, 380, 423) */
		reached[1][380] = 1;
		Printf("<type>BUYPAY</type>\n");
		/* merge: printf('<status>bizfail</status>\\n')(423, 381, 423) */
		reached[1][381] = 1;
		Printf("<status>bizfail</status>\n");
		/* merge: printf('</event>')(423, 382, 423) */
		reached[1][382] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(423, 383, 423) */
		reached[1][383] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 164: // STATE 385 - ./rules.h:329 - [((PayFailBefore==0))] (390:0:2 - 1)
		IfNotBlocked
		reached[1][385] = 1;
		if (!((((int)now.PayFailBefore)==0)))
			continue;
		/* merge: PayFailBefore = 1(390, 386, 390) */
		reached[1][386] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.PayFailBefore);
		now.PayFailBefore = 1;
#ifdef VAR_RANGES
		logval("PayFailBefore", ((int)now.PayFailBefore));
#endif
		;
		/* merge: printf('First BUYPAY-BusinessFailure')(390, 387, 390) */
		reached[1][387] = 1;
		Printf("First BUYPAY-BusinessFailure");
		/* merge: BUYERexTrace = (BUYERexTrace|(1<<PAY_bo.id))(390, 388, 390) */
		reached[1][388] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.PAY_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 165: // STATE 389 - ./BizOperation.h:411 - [CRM2BEG!7,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][389] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 166: // STATE 391 - ./rules.h:334 - [((PayFailBefore==1))] (396:0:0 - 1)
		IfNotBlocked
		reached[1][391] = 1;
		if (!((((int)now.PayFailBefore)==1)))
			continue;
		/* merge: printf('Last BUYPAY-BusinessFailure')(0, 392, 396) */
		reached[1][392] = 1;
		Printf("Last BUYPAY-BusinessFailure");
		_m = 3; goto P999; /* 1 */
	case 167: // STATE 393 - ./BizOperation.h:284 - [PAY_bo.oblig = 0] (0:400:1 - 1)
		IfNotBlocked
		reached[1][393] = 1;
		(trpt+1)->bup.oval = ((int)now.PAY_bo.oblig);
		now.PAY_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAY_bo.oblig", ((int)now.PAY_bo.oblig));
#endif
		;
		/* merge: assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))(400, 394, 400) */
		reached[1][394] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.prohib)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))(400, 395, 400) */
		reached[1][395] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.right)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 168: // STATE 397 - ./BizOperation.h:284 - [CANC_bo.oblig = 0] (0:404:1 - 1)
		IfNotBlocked
		reached[1][397] = 1;
		(trpt+1)->bup.oval = ((int)now.CANC_bo.oblig);
		now.CANC_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CANC_bo.oblig", ((int)now.CANC_bo.oblig));
#endif
		;
		/* merge: assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))(404, 398, 404) */
		reached[1][398] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.prohib)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))(404, 399, 404) */
		reached[1][399] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.right)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 169: // STATE 401 - ./BizOperation.h:284 - [PAYCANCTO_bo.oblig = 0] (0:406:1 - 1)
		IfNotBlocked
		reached[1][401] = 1;
		(trpt+1)->bup.oval = ((int)now.PAYCANCTO_bo.oblig);
		now.PAYCANCTO_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.oblig", ((int)now.PAYCANCTO_bo.oblig));
#endif
		;
		/* merge: assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))(406, 402, 406) */
		reached[1][402] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.prohib)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))(406, 403, 406) */
		reached[1][403] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.right)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 170: // STATE 405 - ./BizOperation.h:55 - [cntttr = 0] (0:409:2 - 1)
		IfNotBlocked
		reached[1][405] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: BUYERexTrace = 0(409, 407, 409) */
		reached[1][407] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 171: // STATE 408 - ./BizOperation.h:55 - [cntttr = 0] (0:419:2 - 1)
		IfNotBlocked
		reached[1][408] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: STOREexTrace = 0(419, 410, 419) */
		reached[1][410] = 1;
		(trpt+1)->bup.ovals[1] = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 172: // STATE 411 - ./rules.h:342 - [printf('\\n\\n')] (0:422:1 - 1)
		IfNotBlocked
		reached[1][411] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(422, 412, 422) */
		reached[1][412] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>reset</originator>\\n')(422, 413, 422) */
		reached[1][413] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(422, 414, 422) */
		reached[1][414] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(422, 415, 422) */
		reached[1][415] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(422, 416, 422) */
		reached[1][416] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('</event>')(422, 417, 422) */
		reached[1][417] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(422, 418, 422) */
		reached[1][418] = 1;
		Printf("\n\n");
		/* merge: BUYERexTrace = (BUYERexTrace|(1<<PAY_bo.id))(422, 420, 422) */
		reached[1][420] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.PAY_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 173: // STATE 421 - ./BizOperation.h:411 - [CRM2BEG!7,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][421] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 1, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 174: // STATE 427 - ./BizOperation.h:419 - [CRM2BEG!5,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][427] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 5, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 175: // STATE 434 - ./BizOperation.h:376 - [(BEG2CRM?[21,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][434] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 435 - ./BizOperation.h:376 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][435] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 177: // STATE 436 - ./BizOperation.h:377 - [(BEG2CRM?[21,BF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][436] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 437 - ./BizOperation.h:377 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][437] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 179: // STATE 438 - ./BizOperation.h:378 - [(BEG2CRM?[21,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][438] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 439 - ./BizOperation.h:378 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][439] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 181: // STATE 440 - ./BizOperation.h:379 - [(BEG2CRM?[21,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][440] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 21 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 12)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 441 - ./BizOperation.h:379 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][441] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 183: // STATE 445 - ./rules.h:374 - [((((GETVOU_bo.right==1)&&((GETVOU_bo.role_pl==BUYER)==1))&&((GETVOU_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][445] = 1;
		if (!((((((int)now.GETVOU_bo.right)==1)&&((((int)now.GETVOU_bo.role_pl)==11)==1))&&((((int)now.GETVOU_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 184: // STATE 446 - ./rules.h:378 - [((payNotification==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][446] = 1;
		if (!((((int)now.payNotification)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 185: // STATE 447 - ./rules.h:380 - [printf('\\n\\n')] (0:468:0 - 1)
		IfNotBlocked
		reached[1][447] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(468, 448, 468) */
		reached[1][448] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>buyer</originator>\\n')(468, 449, 468) */
		reached[1][449] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(468, 450, 468) */
		reached[1][450] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>GETVOU</type>\\n')(468, 451, 468) */
		reached[1][451] = 1;
		Printf("<type>GETVOU</type>\n");
		/* merge: printf('<status>success</status>\\n')(468, 452, 468) */
		reached[1][452] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('</event>')(468, 453, 468) */
		reached[1][453] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(468, 454, 468) */
		reached[1][454] = 1;
		Printf("\n\n");
		/* merge: printf('\\n\\n')(468, 455, 468) */
		reached[1][455] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(468, 456, 468) */
		reached[1][456] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>ccc</originator>\\n')(468, 457, 468) */
		reached[1][457] = 1;
		Printf("<originator>ccc</originator>\n");
		/* merge: printf('<responder>nobody</responder>\\n')(468, 458, 468) */
		reached[1][458] = 1;
		Printf("<responder>nobody</responder>\n");
		/* merge: printf('<type>NORIGHTTOGETVOU</type>\\n')(468, 459, 468) */
		reached[1][459] = 1;
		Printf("<type>NORIGHTTOGETVOU</type>\n");
		/* merge: printf('<status>notification</status>\\n')(468, 460, 468) */
		reached[1][460] = 1;
		Printf("<status>notification</status>\n");
		/* merge: printf('</event>')(468, 461, 468) */
		reached[1][461] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(468, 462, 468) */
		reached[1][462] = 1;
		Printf("\n\n");
		/* merge: printf('GETVOU-Success!!!\\n')(468, 464, 468) */
		reached[1][464] = 1;
		Printf("GETVOU-Success!!!\n");
		_m = 3; goto P999; /* 16 */
	case 186: // STATE 465 - ./BizOperation.h:261 - [GETVOU_bo.right = 0] (0:470:1 - 1)
		IfNotBlocked
		reached[1][465] = 1;
		(trpt+1)->bup.oval = ((int)now.GETVOU_bo.right);
		now.GETVOU_bo.right = 0;
#ifdef VAR_RANGES
		logval("GETVOU_bo.right", ((int)now.GETVOU_bo.right));
#endif
		;
		/* merge: assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1))))(470, 466, 470) */
		reached[1][466] = 1;
		spin_assert( !(((((int)now.GETVOU_bo.right)==1)&&(((int)now.GETVOU_bo.oblig)==1))), " !(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1)))", II, tt, t);
		/* merge: assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1))))(470, 467, 470) */
		reached[1][467] = 1;
		spin_assert( !(((((int)now.GETVOU_bo.right)==1)&&(((int)now.GETVOU_bo.prohib)==1))), " !(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 187: // STATE 469 - ./BizOperation.h:55 - [cntttr = 0] (0:473:2 - 1)
		IfNotBlocked
		reached[1][469] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: BUYERexTrace = 0(473, 471, 473) */
		reached[1][471] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 188: // STATE 472 - ./BizOperation.h:55 - [cntttr = 0] (0:483:2 - 1)
		IfNotBlocked
		reached[1][472] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: STOREexTrace = 0(483, 474, 483) */
		reached[1][474] = 1;
		(trpt+1)->bup.ovals[1] = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 189: // STATE 475 - ./rules.h:404 - [printf('\\n\\n')] (0:486:1 - 1)
		IfNotBlocked
		reached[1][475] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(486, 476, 486) */
		reached[1][476] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>reset</originator>\\n')(486, 477, 486) */
		reached[1][477] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(486, 478, 486) */
		reached[1][478] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(486, 479, 486) */
		reached[1][479] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(486, 480, 486) */
		reached[1][480] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('</event>')(486, 481, 486) */
		reached[1][481] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(486, 482, 486) */
		reached[1][482] = 1;
		Printf("\n\n");
		/* merge: BUYERexTrace = (BUYERexTrace|(1<<GETVOU_bo.id))(486, 484, 486) */
		reached[1][484] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.GETVOU_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 190: // STATE 485 - ./BizOperation.h:411 - [CRM2BEG!5,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][485] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 5, 1, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 191: // STATE 487 - ./rules.h:414 - [((payNotification==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][487] = 1;
		if (!((((int)now.payNotification)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 488 - ./rules.h:416 - [printf('\\n\\n')] (0:501:0 - 1)
		IfNotBlocked
		reached[1][488] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(501, 489, 501) */
		reached[1][489] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>buyer</originator>\\n')(501, 490, 501) */
		reached[1][490] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(501, 491, 501) */
		reached[1][491] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>GETVOU</type>\\n')(501, 492, 501) */
		reached[1][492] = 1;
		Printf("<type>GETVOU</type>\n");
		/* merge: printf('<status>success</status>\\n')(501, 493, 501) */
		reached[1][493] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('</event>')(501, 494, 501) */
		reached[1][494] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(501, 495, 501) */
		reached[1][495] = 1;
		Printf("\n\n");
		/* merge: printf('GETVOU-Success!!!\\n')(501, 497, 501) */
		reached[1][497] = 1;
		Printf("GETVOU-Success!!!\n");
		_m = 3; goto P999; /* 8 */
	case 193: // STATE 498 - ./BizOperation.h:261 - [GETVOU_bo.right = 0] (0:503:1 - 1)
		IfNotBlocked
		reached[1][498] = 1;
		(trpt+1)->bup.oval = ((int)now.GETVOU_bo.right);
		now.GETVOU_bo.right = 0;
#ifdef VAR_RANGES
		logval("GETVOU_bo.right", ((int)now.GETVOU_bo.right));
#endif
		;
		/* merge: assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1))))(503, 499, 503) */
		reached[1][499] = 1;
		spin_assert( !(((((int)now.GETVOU_bo.right)==1)&&(((int)now.GETVOU_bo.oblig)==1))), " !(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1)))", II, tt, t);
		/* merge: assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1))))(503, 500, 503) */
		reached[1][500] = 1;
		spin_assert( !(((((int)now.GETVOU_bo.right)==1)&&(((int)now.GETVOU_bo.prohib)==1))), " !(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 194: // STATE 502 - ./BizOperation.h:55 - [cntttr = 0] (0:506:2 - 1)
		IfNotBlocked
		reached[1][502] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: BUYERexTrace = 0(506, 504, 506) */
		reached[1][504] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 195: // STATE 505 - ./BizOperation.h:55 - [cntttr = 0] (0:516:2 - 1)
		IfNotBlocked
		reached[1][505] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: STOREexTrace = 0(516, 507, 516) */
		reached[1][507] = 1;
		(trpt+1)->bup.ovals[1] = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 196: // STATE 508 - ./rules.h:430 - [printf('\\n\\n')] (0:519:1 - 1)
		IfNotBlocked
		reached[1][508] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(519, 509, 519) */
		reached[1][509] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>reset</originator>\\n')(519, 510, 519) */
		reached[1][510] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(519, 511, 519) */
		reached[1][511] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(519, 512, 519) */
		reached[1][512] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(519, 513, 519) */
		reached[1][513] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('</event>')(519, 514, 519) */
		reached[1][514] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(519, 515, 519) */
		reached[1][515] = 1;
		Printf("\n\n");
		/* merge: BUYERexTrace = (BUYERexTrace|(1<<GETVOU_bo.id))(519, 517, 519) */
		reached[1][517] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.GETVOU_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 197: // STATE 518 - ./BizOperation.h:411 - [CRM2BEG!8,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][518] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 1, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 198: // STATE 595 - ./rules.h:496 - [.(goto)] (0:830:1 - 8)
		IfNotBlocked
		reached[1][595] = 1;
		;
		/* merge: getvou = 1(830, 597, 830) */
		reached[1][597] = 1;
		(trpt+1)->bup.oval = ((int)getvou);
		getvou = 1;
#ifdef VAR_RANGES
		logval("getvou", ((int)getvou));
#endif
		;
		/* merge: .(goto)(0, 831, 830) */
		reached[1][831] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 199: // STATE 523 - ./rules.h:442 - [((((GETVOU_bo.right==1)&&((GETVOU_bo.role_pl==BUYER)==1))&&((GETVOU_bo.status==BF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][523] = 1;
		if (!((((((int)now.GETVOU_bo.right)==1)&&((((int)now.GETVOU_bo.role_pl)==11)==1))&&((((int)now.GETVOU_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 524 - ./rules.h:445 - [printf('\\n\\n')] (0:563:0 - 1)
		IfNotBlocked
		reached[1][524] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(563, 525, 563) */
		reached[1][525] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>buyer</originator>\\n')(563, 526, 563) */
		reached[1][526] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(563, 527, 563) */
		reached[1][527] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>GETVOU</type>\\n')(563, 528, 563) */
		reached[1][528] = 1;
		Printf("<type>GETVOU</type>\n");
		/* merge: printf('<status>bizfail</status>\\n')(563, 529, 563) */
		reached[1][529] = 1;
		Printf("<status>bizfail</status>\n");
		/* merge: printf('</event>')(563, 530, 563) */
		reached[1][530] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(563, 531, 563) */
		reached[1][531] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 201: // STATE 533 - ./rules.h:455 - [((GetVouFailBefore==0))] (538:0:2 - 1)
		IfNotBlocked
		reached[1][533] = 1;
		if (!((((int)now.GetVouFailBefore)==0)))
			continue;
		/* merge: GetVouFailBefore = 1(538, 534, 538) */
		reached[1][534] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.GetVouFailBefore);
		now.GetVouFailBefore = 1;
#ifdef VAR_RANGES
		logval("GetVouFailBefore", ((int)now.GetVouFailBefore));
#endif
		;
		/* merge: printf('First GETVOU-BusinessFailure')(538, 535, 538) */
		reached[1][535] = 1;
		Printf("First GETVOU-BusinessFailure");
		/* merge: BUYERexTrace = (BUYERexTrace|(1<<GETVOU_bo.id))(538, 536, 538) */
		reached[1][536] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.GETVOU_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 202: // STATE 537 - ./BizOperation.h:411 - [CRM2BEG!8,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][537] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 203: // STATE 539 - ./rules.h:460 - [((GetVouFailBefore==1))] (544:0:0 - 1)
		IfNotBlocked
		reached[1][539] = 1;
		if (!((((int)now.GetVouFailBefore)==1)))
			continue;
		/* merge: printf('Last GETVOU-BusinessFailure')(0, 540, 544) */
		reached[1][540] = 1;
		Printf("Last GETVOU-BusinessFailure");
		_m = 3; goto P999; /* 1 */
	case 204: // STATE 541 - ./BizOperation.h:261 - [GETVOU_bo.right = 0] (0:546:1 - 1)
		IfNotBlocked
		reached[1][541] = 1;
		(trpt+1)->bup.oval = ((int)now.GETVOU_bo.right);
		now.GETVOU_bo.right = 0;
#ifdef VAR_RANGES
		logval("GETVOU_bo.right", ((int)now.GETVOU_bo.right));
#endif
		;
		/* merge: assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1))))(546, 542, 546) */
		reached[1][542] = 1;
		spin_assert( !(((((int)now.GETVOU_bo.right)==1)&&(((int)now.GETVOU_bo.oblig)==1))), " !(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1)))", II, tt, t);
		/* merge: assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1))))(546, 543, 546) */
		reached[1][543] = 1;
		spin_assert( !(((((int)now.GETVOU_bo.right)==1)&&(((int)now.GETVOU_bo.prohib)==1))), " !(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 205: // STATE 545 - ./BizOperation.h:55 - [cntttr = 0] (0:549:2 - 1)
		IfNotBlocked
		reached[1][545] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: BUYERexTrace = 0(549, 547, 549) */
		reached[1][547] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 206: // STATE 548 - ./BizOperation.h:55 - [cntttr = 0] (0:559:2 - 1)
		IfNotBlocked
		reached[1][548] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: STOREexTrace = 0(559, 550, 559) */
		reached[1][550] = 1;
		(trpt+1)->bup.ovals[1] = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 207: // STATE 551 - ./rules.h:466 - [printf('\\n\\n')] (0:562:1 - 1)
		IfNotBlocked
		reached[1][551] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(562, 552, 562) */
		reached[1][552] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>reset</originator>\\n')(562, 553, 562) */
		reached[1][553] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(562, 554, 562) */
		reached[1][554] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(562, 555, 562) */
		reached[1][555] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(562, 556, 562) */
		reached[1][556] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('</event>')(562, 557, 562) */
		reached[1][557] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(562, 558, 562) */
		reached[1][558] = 1;
		Printf("\n\n");
		/* merge: BUYERexTrace = (BUYERexTrace|(1<<GETVOU_bo.id))(562, 560, 562) */
		reached[1][560] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.GETVOU_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 208: // STATE 561 - ./BizOperation.h:411 - [CRM2BEG!8,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][561] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 1, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 209: // STATE 566 - ./rules.h:478 - [((((GETVOU_bo.right==1)&&((GETVOU_bo.role_pl==BUYER)==1))&&((GETVOU_bo.status==TO)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][566] = 1;
		if (!((((((int)now.GETVOU_bo.right)==1)&&((((int)now.GETVOU_bo.role_pl)==11)==1))&&((((int)now.GETVOU_bo.status)==12)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 210: // STATE 567 - ./rules.h:480 - [printf('GETVOU time out')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][567] = 1;
		Printf("GETVOU time out");
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 568 - ./BizOperation.h:261 - [GETVOU_bo.right = 0] (0:573:1 - 1)
		IfNotBlocked
		reached[1][568] = 1;
		(trpt+1)->bup.oval = ((int)now.GETVOU_bo.right);
		now.GETVOU_bo.right = 0;
#ifdef VAR_RANGES
		logval("GETVOU_bo.right", ((int)now.GETVOU_bo.right));
#endif
		;
		/* merge: assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1))))(573, 569, 573) */
		reached[1][569] = 1;
		spin_assert( !(((((int)now.GETVOU_bo.right)==1)&&(((int)now.GETVOU_bo.oblig)==1))), " !(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1)))", II, tt, t);
		/* merge: assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1))))(573, 570, 573) */
		reached[1][570] = 1;
		spin_assert( !(((((int)now.GETVOU_bo.right)==1)&&(((int)now.GETVOU_bo.prohib)==1))), " !(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 212: // STATE 572 - ./BizOperation.h:55 - [cntttr = 0] (0:576:2 - 1)
		IfNotBlocked
		reached[1][572] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: BUYERexTrace = 0(576, 574, 576) */
		reached[1][574] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 213: // STATE 575 - ./BizOperation.h:55 - [cntttr = 0] (0:586:2 - 1)
		IfNotBlocked
		reached[1][575] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: STOREexTrace = 0(586, 577, 586) */
		reached[1][577] = 1;
		(trpt+1)->bup.ovals[1] = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 214: // STATE 578 - ./rules.h:485 - [printf('\\n\\n')] (0:589:1 - 1)
		IfNotBlocked
		reached[1][578] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(589, 579, 589) */
		reached[1][579] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>reset</originator>\\n')(589, 580, 589) */
		reached[1][580] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(589, 581, 589) */
		reached[1][581] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(589, 582, 589) */
		reached[1][582] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(589, 583, 589) */
		reached[1][583] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('</event>')(589, 584, 589) */
		reached[1][584] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(589, 585, 589) */
		reached[1][585] = 1;
		Printf("\n\n");
		/* merge: BUYERexTrace = (BUYERexTrace|(1<<GETVOU_bo.id))(589, 587, 589) */
		reached[1][587] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.GETVOU_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 215: // STATE 588 - ./BizOperation.h:411 - [CRM2BEG!8,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][588] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 8, 1, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 216: // STATE 592 - ./BizOperation.h:419 - [CRM2BEG!5,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][592] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 5, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 217: // STATE 599 - ./BizOperation.h:376 - [(BEG2CRM?[20,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][599] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 218: // STATE 600 - ./BizOperation.h:376 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][600] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 219: // STATE 601 - ./BizOperation.h:377 - [(BEG2CRM?[20,BF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][601] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 220: // STATE 602 - ./BizOperation.h:377 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][602] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 221: // STATE 603 - ./BizOperation.h:378 - [(BEG2CRM?[20,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][603] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 222: // STATE 604 - ./BizOperation.h:378 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][604] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 223: // STATE 605 - ./BizOperation.h:379 - [(BEG2CRM?[20,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][605] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 20 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 12)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 224: // STATE 606 - ./BizOperation.h:379 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][606] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 225: // STATE 610 - ./rules.h:510 - [((((CANC_bo.oblig==1)&&((CANC_bo.role_pl==BUYER)==1))&&((CANC_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][610] = 1;
		if (!((((((int)now.CANC_bo.oblig)==1)&&((((int)now.CANC_bo.role_pl)==11)==1))&&((((int)now.CANC_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 226: // STATE 611 - ./rules.h:514 - [printf('\\n\\n')] (0:623:0 - 1)
		IfNotBlocked
		reached[1][611] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(623, 612, 623) */
		reached[1][612] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>buyer</originator>\\n')(623, 613, 623) */
		reached[1][613] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(623, 614, 623) */
		reached[1][614] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>BUYCANC</type>\\n')(623, 615, 623) */
		reached[1][615] = 1;
		Printf("<type>BUYCANC</type>\n");
		/* merge: printf('<status>success</status>\\n')(623, 616, 623) */
		reached[1][616] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('</event>')(623, 617, 623) */
		reached[1][617] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(623, 618, 623) */
		reached[1][618] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 227: // STATE 620 - ./BizOperation.h:284 - [PAY_bo.oblig = 0] (0:627:1 - 1)
		IfNotBlocked
		reached[1][620] = 1;
		(trpt+1)->bup.oval = ((int)now.PAY_bo.oblig);
		now.PAY_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAY_bo.oblig", ((int)now.PAY_bo.oblig));
#endif
		;
		/* merge: assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))(627, 621, 627) */
		reached[1][621] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.prohib)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))(627, 622, 627) */
		reached[1][622] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.right)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 228: // STATE 624 - ./BizOperation.h:284 - [CANC_bo.oblig = 0] (0:631:1 - 1)
		IfNotBlocked
		reached[1][624] = 1;
		(trpt+1)->bup.oval = ((int)now.CANC_bo.oblig);
		now.CANC_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CANC_bo.oblig", ((int)now.CANC_bo.oblig));
#endif
		;
		/* merge: assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))(631, 625, 631) */
		reached[1][625] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.prohib)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))(631, 626, 631) */
		reached[1][626] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.right)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 229: // STATE 628 - ./BizOperation.h:284 - [PAYCANCTO_bo.oblig = 0] (0:633:1 - 1)
		IfNotBlocked
		reached[1][628] = 1;
		(trpt+1)->bup.oval = ((int)now.PAYCANCTO_bo.oblig);
		now.PAYCANCTO_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.oblig", ((int)now.PAYCANCTO_bo.oblig));
#endif
		;
		/* merge: assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))(633, 629, 633) */
		reached[1][629] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.prohib)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))(633, 630, 633) */
		reached[1][630] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.right)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 230: // STATE 632 - ./BizOperation.h:55 - [cntttr = 0] (0:636:2 - 1)
		IfNotBlocked
		reached[1][632] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: BUYERexTrace = 0(636, 634, 636) */
		reached[1][634] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 231: // STATE 635 - ./BizOperation.h:55 - [cntttr = 0] (0:646:2 - 1)
		IfNotBlocked
		reached[1][635] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: STOREexTrace = 0(646, 637, 646) */
		reached[1][637] = 1;
		(trpt+1)->bup.ovals[1] = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 232: // STATE 638 - ./rules.h:530 - [printf('\\n\\n')] (0:649:1 - 1)
		IfNotBlocked
		reached[1][638] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(649, 639, 649) */
		reached[1][639] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>reset</originator>\\n')(649, 640, 649) */
		reached[1][640] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(649, 641, 649) */
		reached[1][641] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(649, 642, 649) */
		reached[1][642] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(649, 643, 649) */
		reached[1][643] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('</event>')(649, 644, 649) */
		reached[1][644] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(649, 645, 649) */
		reached[1][645] = 1;
		Printf("\n\n");
		/* merge: BUYERexTrace = (BUYERexTrace|(1<<CANC_bo.id))(649, 647, 649) */
		reached[1][647] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.CANC_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 233: // STATE 648 - ./BizOperation.h:411 - [CRM2BEG!7,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][648] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 1, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 234: // STATE 706 - ./rules.h:578 - [.(goto)] (0:830:1 - 5)
		IfNotBlocked
		reached[1][706] = 1;
		;
		/* merge: canc = 1(830, 708, 830) */
		reached[1][708] = 1;
		(trpt+1)->bup.oval = ((int)now.canc);
		now.canc = 1;
#ifdef VAR_RANGES
		logval("canc", ((int)now.canc));
#endif
		;
		/* merge: .(goto)(0, 831, 830) */
		reached[1][831] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 235: // STATE 651 - ./rules.h:541 - [((((CANC_bo.oblig==1)&&((CANC_bo.role_pl==BUYER)==1))&&((CANC_bo.status==BF)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][651] = 1;
		if (!((((((int)now.CANC_bo.oblig)==1)&&((((int)now.CANC_bo.role_pl)==11)==1))&&((((int)now.CANC_bo.status)==14)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 236: // STATE 652 - ./rules.h:544 - [printf('\\n\\n')] (0:699:0 - 1)
		IfNotBlocked
		reached[1][652] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(699, 653, 699) */
		reached[1][653] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>buyer</originator>\\n')(699, 654, 699) */
		reached[1][654] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(699, 655, 699) */
		reached[1][655] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>BUYCANC</type>\\n')(699, 656, 699) */
		reached[1][656] = 1;
		Printf("<type>BUYCANC</type>\n");
		/* merge: printf('<status>bizfail</status>\\n')(699, 657, 699) */
		reached[1][657] = 1;
		Printf("<status>bizfail</status>\n");
		/* merge: printf('</event>')(699, 658, 699) */
		reached[1][658] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(699, 659, 699) */
		reached[1][659] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 237: // STATE 661 - ./rules.h:554 - [((CancFailBefore==0))] (666:0:2 - 1)
		IfNotBlocked
		reached[1][661] = 1;
		if (!((((int)now.CancFailBefore)==0)))
			continue;
		/* merge: CancFailBefore = 1(666, 662, 666) */
		reached[1][662] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.CancFailBefore);
		now.CancFailBefore = 1;
#ifdef VAR_RANGES
		logval("CancFailBefore", ((int)now.CancFailBefore));
#endif
		;
		/* merge: printf('First CANC-BusinessFailure')(666, 663, 666) */
		reached[1][663] = 1;
		Printf("First CANC-BusinessFailure");
		/* merge: BUYERexTrace = (BUYERexTrace|(1<<CANC_bo.id))(666, 664, 666) */
		reached[1][664] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.CANC_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 238: // STATE 665 - ./BizOperation.h:411 - [CRM2BEG!7,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][665] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 239: // STATE 667 - ./rules.h:559 - [((CancFailBefore==1))] (672:0:0 - 1)
		IfNotBlocked
		reached[1][667] = 1;
		if (!((((int)now.CancFailBefore)==1)))
			continue;
		/* merge: printf('Last CANC-BusinessFailure')(0, 668, 672) */
		reached[1][668] = 1;
		Printf("Last CANC-BusinessFailure");
		_m = 3; goto P999; /* 1 */
	case 240: // STATE 669 - ./BizOperation.h:284 - [PAY_bo.oblig = 0] (0:676:1 - 1)
		IfNotBlocked
		reached[1][669] = 1;
		(trpt+1)->bup.oval = ((int)now.PAY_bo.oblig);
		now.PAY_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAY_bo.oblig", ((int)now.PAY_bo.oblig));
#endif
		;
		/* merge: assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))(676, 670, 676) */
		reached[1][670] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.prohib)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))(676, 671, 676) */
		reached[1][671] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.right)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 241: // STATE 673 - ./BizOperation.h:284 - [CANC_bo.oblig = 0] (0:680:1 - 1)
		IfNotBlocked
		reached[1][673] = 1;
		(trpt+1)->bup.oval = ((int)now.CANC_bo.oblig);
		now.CANC_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CANC_bo.oblig", ((int)now.CANC_bo.oblig));
#endif
		;
		/* merge: assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))(680, 674, 680) */
		reached[1][674] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.prohib)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))(680, 675, 680) */
		reached[1][675] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.right)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 242: // STATE 677 - ./BizOperation.h:284 - [PAYCANCTO_bo.oblig = 0] (0:682:1 - 1)
		IfNotBlocked
		reached[1][677] = 1;
		(trpt+1)->bup.oval = ((int)now.PAYCANCTO_bo.oblig);
		now.PAYCANCTO_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.oblig", ((int)now.PAYCANCTO_bo.oblig));
#endif
		;
		/* merge: assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))(682, 678, 682) */
		reached[1][678] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.prohib)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))(682, 679, 682) */
		reached[1][679] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.right)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 243: // STATE 681 - ./BizOperation.h:55 - [cntttr = 0] (0:685:2 - 1)
		IfNotBlocked
		reached[1][681] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: BUYERexTrace = 0(685, 683, 685) */
		reached[1][683] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 244: // STATE 684 - ./BizOperation.h:55 - [cntttr = 0] (0:695:2 - 1)
		IfNotBlocked
		reached[1][684] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: STOREexTrace = 0(695, 686, 695) */
		reached[1][686] = 1;
		(trpt+1)->bup.ovals[1] = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 245: // STATE 687 - ./rules.h:567 - [printf('\\n\\n')] (0:698:1 - 1)
		IfNotBlocked
		reached[1][687] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(698, 688, 698) */
		reached[1][688] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>reset</originator>\\n')(698, 689, 698) */
		reached[1][689] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(698, 690, 698) */
		reached[1][690] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(698, 691, 698) */
		reached[1][691] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(698, 692, 698) */
		reached[1][692] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('</event>')(698, 693, 698) */
		reached[1][693] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(698, 694, 698) */
		reached[1][694] = 1;
		Printf("\n\n");
		/* merge: BUYERexTrace = (BUYERexTrace|(1<<CANC_bo.id))(698, 696, 698) */
		reached[1][696] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.CANC_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 246: // STATE 697 - ./BizOperation.h:411 - [CRM2BEG!7,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][697] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 1, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 247: // STATE 703 - ./BizOperation.h:419 - [CRM2BEG!5,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][703] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 5, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 248: // STATE 710 - ./BizOperation.h:376 - [(BEG2CRM?[22,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][710] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 249: // STATE 711 - ./BizOperation.h:376 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][711] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 250: // STATE 712 - ./BizOperation.h:377 - [(BEG2CRM?[22,BF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][712] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 251: // STATE 713 - ./BizOperation.h:377 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][713] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 252: // STATE 714 - ./BizOperation.h:378 - [(BEG2CRM?[22,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][714] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 253: // STATE 715 - ./BizOperation.h:378 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][715] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 254: // STATE 716 - ./BizOperation.h:379 - [(BEG2CRM?[22,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][716] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 22 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 12)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 255: // STATE 717 - ./BizOperation.h:379 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][717] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 256: // STATE 721 - ./rules.h:591 - [((((REJCONFTO_bo.oblig==1)&&((REJCONFTO_bo.role_pl==STORE)==1))&&((REJCONFTO_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][721] = 1;
		if (!((((((int)now.REJCONFTO_bo.oblig)==1)&&((((int)now.REJCONFTO_bo.role_pl)==10)==1))&&((((int)now.REJCONFTO_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 257: // STATE 722 - ./rules.h:595 - [printf('\\n\\n')] (0:734:0 - 1)
		IfNotBlocked
		reached[1][722] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(734, 723, 734) */
		reached[1][723] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>store</originator>\\n')(734, 724, 734) */
		reached[1][724] = 1;
		Printf("<originator>store</originator>\n");
		/* merge: printf('<responder>buyer</responder>\\n')(734, 725, 734) */
		reached[1][725] = 1;
		Printf("<responder>buyer</responder>\n");
		/* merge: printf('<type>REJCONFTO</type>\\n')(734, 726, 734) */
		reached[1][726] = 1;
		Printf("<type>REJCONFTO</type>\n");
		/* merge: printf('<status>success</status>\\n')(734, 727, 734) */
		reached[1][727] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('</event>')(734, 728, 734) */
		reached[1][728] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(734, 729, 734) */
		reached[1][729] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 258: // STATE 731 - ./BizOperation.h:284 - [REJ_bo.oblig = 0] (0:738:1 - 1)
		IfNotBlocked
		reached[1][731] = 1;
		(trpt+1)->bup.oval = ((int)now.REJ_bo.oblig);
		now.REJ_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("REJ_bo.oblig", ((int)now.REJ_bo.oblig));
#endif
		;
		/* merge: assert(!(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1))))(738, 732, 738) */
		reached[1][732] = 1;
		spin_assert( !(((((int)now.REJ_bo.oblig)==1)&&(((int)now.REJ_bo.prohib)==1))), " !(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((REJ_bo.oblig==1)&&(REJ_bo.right==1))))(738, 733, 738) */
		reached[1][733] = 1;
		spin_assert( !(((((int)now.REJ_bo.oblig)==1)&&(((int)now.REJ_bo.right)==1))), " !(((REJ_bo.oblig==1)&&(REJ_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 259: // STATE 735 - ./BizOperation.h:284 - [CONF_bo.oblig = 0] (0:742:1 - 1)
		IfNotBlocked
		reached[1][735] = 1;
		(trpt+1)->bup.oval = ((int)now.CONF_bo.oblig);
		now.CONF_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CONF_bo.oblig", ((int)now.CONF_bo.oblig));
#endif
		;
		/* merge: assert(!(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1))))(742, 736, 742) */
		reached[1][736] = 1;
		spin_assert( !(((((int)now.CONF_bo.oblig)==1)&&(((int)now.CONF_bo.prohib)==1))), " !(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((CONF_bo.oblig==1)&&(CONF_bo.right==1))))(742, 737, 742) */
		reached[1][737] = 1;
		spin_assert( !(((((int)now.CONF_bo.oblig)==1)&&(((int)now.CONF_bo.right)==1))), " !(((CONF_bo.oblig==1)&&(CONF_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 260: // STATE 739 - ./BizOperation.h:284 - [REJCONFTO_bo.oblig = 0] (0:744:1 - 1)
		IfNotBlocked
		reached[1][739] = 1;
		(trpt+1)->bup.oval = ((int)now.REJCONFTO_bo.oblig);
		now.REJCONFTO_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("REJCONFTO_bo.oblig", ((int)now.REJCONFTO_bo.oblig));
#endif
		;
		/* merge: assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1))))(744, 740, 744) */
		reached[1][740] = 1;
		spin_assert( !(((((int)now.REJCONFTO_bo.oblig)==1)&&(((int)now.REJCONFTO_bo.prohib)==1))), " !(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1))))(744, 741, 744) */
		reached[1][741] = 1;
		spin_assert( !(((((int)now.REJCONFTO_bo.oblig)==1)&&(((int)now.REJCONFTO_bo.right)==1))), " !(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 261: // STATE 743 - ./BizOperation.h:55 - [cntttr = 0] (0:747:2 - 1)
		IfNotBlocked
		reached[1][743] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: BUYERexTrace = 0(747, 745, 747) */
		reached[1][745] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 262: // STATE 746 - ./BizOperation.h:55 - [cntttr = 0] (0:757:2 - 1)
		IfNotBlocked
		reached[1][746] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: STOREexTrace = 0(757, 748, 757) */
		reached[1][748] = 1;
		(trpt+1)->bup.ovals[1] = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 263: // STATE 749 - ./rules.h:611 - [printf('\\n\\n')] (0:760:1 - 1)
		IfNotBlocked
		reached[1][749] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(760, 750, 760) */
		reached[1][750] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>reset</originator>\\n')(760, 751, 760) */
		reached[1][751] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(760, 752, 760) */
		reached[1][752] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(760, 753, 760) */
		reached[1][753] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(760, 754, 760) */
		reached[1][754] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('</event>')(760, 755, 760) */
		reached[1][755] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(760, 756, 760) */
		reached[1][756] = 1;
		Printf("\n\n");
		/* merge: STOREexTrace = (STOREexTrace|(1<<REJCONFTO_bo.id))(760, 758, 760) */
		reached[1][758] = 1;
		(trpt+1)->bup.oval = now.STOREexTrace;
		now.STOREexTrace = (now.STOREexTrace|(1<<((int)now.REJCONFTO_bo.id)));
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 264: // STATE 759 - ./BizOperation.h:411 - [CRM2BEG!7,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][759] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 1, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 265: // STATE 766 - ./rules.h:621 - [.(goto)] (0:830:1 - 2)
		IfNotBlocked
		reached[1][766] = 1;
		;
		/* merge: rejconfto = 1(830, 768, 830) */
		reached[1][768] = 1;
		(trpt+1)->bup.oval = ((int)now.rejconfto);
		now.rejconfto = 1;
#ifdef VAR_RANGES
		logval("rejconfto", ((int)now.rejconfto));
#endif
		;
		/* merge: .(goto)(0, 831, 830) */
		reached[1][831] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 266: // STATE 763 - ./BizOperation.h:419 - [CRM2BEG!5,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][763] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 5, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 267: // STATE 770 - ./BizOperation.h:376 - [(BEG2CRM?[23,S])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][770] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 15)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 268: // STATE 771 - ./BizOperation.h:376 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][771] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 269: // STATE 772 - ./BizOperation.h:377 - [(BEG2CRM?[23,BF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][772] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 14)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 270: // STATE 773 - ./BizOperation.h:377 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][773] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 271: // STATE 774 - ./BizOperation.h:378 - [(BEG2CRM?[23,TF])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][774] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 13)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 272: // STATE 775 - ./BizOperation.h:378 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][775] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 273: // STATE 776 - ./BizOperation.h:379 - [(BEG2CRM?[23,TO])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][776] = 1;
		if (!(not_RV(now.BEG2CRM) && \
		(q_len(now.BEG2CRM) > 0 \
		&& qrecv(now.BEG2CRM, 0, 0, 0) == 23 \
		&& qrecv(now.BEG2CRM, 0, 1, 0) == 12)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 274: // STATE 777 - ./BizOperation.h:379 - [BEG2CRM?_,_] (0:0:2 - 1)
		reached[1][777] = 1;
		if (q_zero(now.BEG2CRM))
		{	if (boq != now.BEG2CRM) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.BEG2CRM) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = qrecv(now.BEG2CRM, XX-1, 0, 0);
		(trpt+1)->bup.ovals[1] = qrecv(now.BEG2CRM, XX-1, 1, 0);
		;
		qrecv(now.BEG2CRM, XX-1, 0, 0);
		qrecv(now.BEG2CRM, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.BEG2CRM);
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)_)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.BEG2CRM))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 275: // STATE 781 - ./rules.h:634 - [((((PAYCANCTO_bo.oblig==1)&&((PAYCANCTO_bo.role_pl==BUYER)==1))&&((PAYCANCTO_bo.status==S)==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][781] = 1;
		if (!((((((int)now.PAYCANCTO_bo.oblig)==1)&&((((int)now.PAYCANCTO_bo.role_pl)==11)==1))&&((((int)now.PAYCANCTO_bo.status)==15)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 276: // STATE 782 - ./rules.h:638 - [printf('\\n\\n')] (0:794:0 - 1)
		IfNotBlocked
		reached[1][782] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(794, 783, 794) */
		reached[1][783] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>buyer</originator>\\n')(794, 784, 794) */
		reached[1][784] = 1;
		Printf("<originator>buyer</originator>\n");
		/* merge: printf('<responder>store</responder>\\n')(794, 785, 794) */
		reached[1][785] = 1;
		Printf("<responder>store</responder>\n");
		/* merge: printf('<type>PAYCANCTO</type>\\n')(794, 786, 794) */
		reached[1][786] = 1;
		Printf("<type>PAYCANCTO</type>\n");
		/* merge: printf('<status>success</status>\\n')(794, 787, 794) */
		reached[1][787] = 1;
		Printf("<status>success</status>\n");
		/* merge: printf('</event>')(794, 788, 794) */
		reached[1][788] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(794, 789, 794) */
		reached[1][789] = 1;
		Printf("\n\n");
		_m = 3; goto P999; /* 7 */
	case 277: // STATE 791 - ./BizOperation.h:284 - [PAY_bo.oblig = 0] (0:798:1 - 1)
		IfNotBlocked
		reached[1][791] = 1;
		(trpt+1)->bup.oval = ((int)now.PAY_bo.oblig);
		now.PAY_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAY_bo.oblig", ((int)now.PAY_bo.oblig));
#endif
		;
		/* merge: assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))(798, 792, 798) */
		reached[1][792] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.prohib)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))(798, 793, 798) */
		reached[1][793] = 1;
		spin_assert( !(((((int)now.PAY_bo.oblig)==1)&&(((int)now.PAY_bo.right)==1))), " !(((PAY_bo.oblig==1)&&(PAY_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 278: // STATE 795 - ./BizOperation.h:284 - [CANC_bo.oblig = 0] (0:802:1 - 1)
		IfNotBlocked
		reached[1][795] = 1;
		(trpt+1)->bup.oval = ((int)now.CANC_bo.oblig);
		now.CANC_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CANC_bo.oblig", ((int)now.CANC_bo.oblig));
#endif
		;
		/* merge: assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))(802, 796, 802) */
		reached[1][796] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.prohib)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))(802, 797, 802) */
		reached[1][797] = 1;
		spin_assert( !(((((int)now.CANC_bo.oblig)==1)&&(((int)now.CANC_bo.right)==1))), " !(((CANC_bo.oblig==1)&&(CANC_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 279: // STATE 799 - ./BizOperation.h:284 - [PAYCANCTO_bo.oblig = 0] (0:804:1 - 1)
		IfNotBlocked
		reached[1][799] = 1;
		(trpt+1)->bup.oval = ((int)now.PAYCANCTO_bo.oblig);
		now.PAYCANCTO_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.oblig", ((int)now.PAYCANCTO_bo.oblig));
#endif
		;
		/* merge: assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))(804, 800, 804) */
		reached[1][800] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.prohib)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1)))", II, tt, t);
		/* merge: assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))(804, 801, 804) */
		reached[1][801] = 1;
		spin_assert( !(((((int)now.PAYCANCTO_bo.oblig)==1)&&(((int)now.PAYCANCTO_bo.right)==1))), " !(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1)))", II, tt, t);
		_m = 3; goto P999; /* 2 */
	case 280: // STATE 803 - ./BizOperation.h:55 - [cntttr = 0] (0:807:2 - 1)
		IfNotBlocked
		reached[1][803] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: BUYERexTrace = 0(807, 805, 807) */
		reached[1][805] = 1;
		(trpt+1)->bup.ovals[1] = now.BUYERexTrace;
		now.BUYERexTrace = 0;
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 281: // STATE 806 - ./BizOperation.h:55 - [cntttr = 0] (0:817:2 - 1)
		IfNotBlocked
		reached[1][806] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.cntttr);
		now.cntttr = 0;
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
		/* merge: STOREexTrace = 0(817, 808, 817) */
		reached[1][808] = 1;
		(trpt+1)->bup.ovals[1] = now.STOREexTrace;
		now.STOREexTrace = 0;
#ifdef VAR_RANGES
		logval("STOREexTrace", now.STOREexTrace);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 282: // STATE 809 - ./rules.h:654 - [printf('\\n\\n')] (0:820:1 - 1)
		IfNotBlocked
		reached[1][809] = 1;
		Printf("\n\n");
		/* merge: printf('<event>\\n')(820, 810, 820) */
		reached[1][810] = 1;
		Printf("<event>\n");
		/* merge: printf('<originator>reset</originator>\\n')(820, 811, 820) */
		reached[1][811] = 1;
		Printf("<originator>reset</originator>\n");
		/* merge: printf('<responder>reset</responder>\\n')(820, 812, 820) */
		reached[1][812] = 1;
		Printf("<responder>reset</responder>\n");
		/* merge: printf('<type>reset</type>\\n')(820, 813, 820) */
		reached[1][813] = 1;
		Printf("<type>reset</type>\n");
		/* merge: printf('<status>reset</status>\\n')(820, 814, 820) */
		reached[1][814] = 1;
		Printf("<status>reset</status>\n");
		/* merge: printf('</event>')(820, 815, 820) */
		reached[1][815] = 1;
		Printf("</event>");
		/* merge: printf('\\n\\n')(820, 816, 820) */
		reached[1][816] = 1;
		Printf("\n\n");
		/* merge: BUYERexTrace = (BUYERexTrace|(1<<PAYCANCTO_bo.id))(820, 818, 820) */
		reached[1][818] = 1;
		(trpt+1)->bup.oval = now.BUYERexTrace;
		now.BUYERexTrace = (now.BUYERexTrace|(1<<((int)now.PAYCANCTO_bo.id)));
#ifdef VAR_RANGES
		logval("BUYERexTrace", now.BUYERexTrace);
#endif
		;
		_m = 3; goto P999; /* 8 */
	case 283: // STATE 819 - ./BizOperation.h:411 - [CRM2BEG!7,1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][819] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 7, 1, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 284: // STATE 826 - ./rules.h:664 - [.(goto)] (0:830:1 - 2)
		IfNotBlocked
		reached[1][826] = 1;
		;
		/* merge: paycancto = 1(830, 828, 830) */
		reached[1][828] = 1;
		(trpt+1)->bup.oval = ((int)now.paycancto);
		now.paycancto = 1;
#ifdef VAR_RANGES
		logval("paycancto", ((int)now.paycancto));
#endif
		;
		/* merge: .(goto)(0, 831, 830) */
		reached[1][831] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 285: // STATE 823 - ./BizOperation.h:419 - [CRM2BEG!5,4] (0:0:0 - 1)
		IfNotBlocked
		reached[1][823] = 1;
		if (q_full(now.CRM2BEG))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.CRM2BEG, 0, 5, 4, 2);
		if (q_zero(now.CRM2BEG)) { boq = now.CRM2BEG; };
		_m = 2; goto P999; /* 0 */
	case 286: // STATE 833 - dataseller.pml:212 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][833] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC BEG */
	case 287: // STATE 8 - ./BizOperation.h:160 - [D_STEP160]
		IfNotBlocked

		reached[0][8] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_000_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_001_0: /* 2 */
		now.BUYRQ_bo.role_pl = 11;
#ifdef VAR_RANGES
		logval("BUYRQ_bo.role_pl", ((int)now.BUYRQ_bo.role_pl));
#endif
		;
S_002_0: /* 2 */
		now.BUYRQ_bo.right = 1;
#ifdef VAR_RANGES
		logval("BUYRQ_bo.right", ((int)now.BUYRQ_bo.right));
#endif
		;
S_003_0: /* 2 */
		now.BUYRQ_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("BUYRQ_bo.oblig", ((int)now.BUYRQ_bo.oblig));
#endif
		;
S_004_0: /* 2 */
		now.BUYRQ_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("BUYRQ_bo.prohib", ((int)now.BUYRQ_bo.prohib));
#endif
		;
S_005_0: /* 2 */
		now.BUYRQ_bo.executed = 0;
#ifdef VAR_RANGES
		logval("BUYRQ_bo.executed", ((int)now.BUYRQ_bo.executed));
#endif
		;
S_006_0: /* 2 */
		now.BUYRQ_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("BUYRQ_bo.id", ((int)now.BUYRQ_bo.id));
#endif
		;
		goto S_017_0;
S_017_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 288: // STATE 17 - ./BizOperation.h:160 - [D_STEP160]
		IfNotBlocked

		reached[0][17] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_009_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_010_0: /* 2 */
		now.REJ_bo.role_pl = 10;
#ifdef VAR_RANGES
		logval("REJ_bo.role_pl", ((int)now.REJ_bo.role_pl));
#endif
		;
S_011_0: /* 2 */
		now.REJ_bo.right = 0;
#ifdef VAR_RANGES
		logval("REJ_bo.right", ((int)now.REJ_bo.right));
#endif
		;
S_012_0: /* 2 */
		now.REJ_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("REJ_bo.oblig", ((int)now.REJ_bo.oblig));
#endif
		;
S_013_0: /* 2 */
		now.REJ_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("REJ_bo.prohib", ((int)now.REJ_bo.prohib));
#endif
		;
S_014_0: /* 2 */
		now.REJ_bo.executed = 0;
#ifdef VAR_RANGES
		logval("REJ_bo.executed", ((int)now.REJ_bo.executed));
#endif
		;
S_015_0: /* 2 */
		now.REJ_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("REJ_bo.id", ((int)now.REJ_bo.id));
#endif
		;
		goto S_026_0;
S_026_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 289: // STATE 26 - ./BizOperation.h:160 - [D_STEP160]
		IfNotBlocked

		reached[0][26] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_018_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_019_0: /* 2 */
		now.CONF_bo.role_pl = 10;
#ifdef VAR_RANGES
		logval("CONF_bo.role_pl", ((int)now.CONF_bo.role_pl));
#endif
		;
S_020_0: /* 2 */
		now.CONF_bo.right = 0;
#ifdef VAR_RANGES
		logval("CONF_bo.right", ((int)now.CONF_bo.right));
#endif
		;
S_021_0: /* 2 */
		now.CONF_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CONF_bo.oblig", ((int)now.CONF_bo.oblig));
#endif
		;
S_022_0: /* 2 */
		now.CONF_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("CONF_bo.prohib", ((int)now.CONF_bo.prohib));
#endif
		;
S_023_0: /* 2 */
		now.CONF_bo.executed = 0;
#ifdef VAR_RANGES
		logval("CONF_bo.executed", ((int)now.CONF_bo.executed));
#endif
		;
S_024_0: /* 2 */
		now.CONF_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("CONF_bo.id", ((int)now.CONF_bo.id));
#endif
		;
		goto S_035_0;
S_035_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 290: // STATE 35 - ./BizOperation.h:160 - [D_STEP160]
		IfNotBlocked

		reached[0][35] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_027_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_028_0: /* 2 */
		now.PAY_bo.role_pl = 11;
#ifdef VAR_RANGES
		logval("PAY_bo.role_pl", ((int)now.PAY_bo.role_pl));
#endif
		;
S_029_0: /* 2 */
		now.PAY_bo.right = 0;
#ifdef VAR_RANGES
		logval("PAY_bo.right", ((int)now.PAY_bo.right));
#endif
		;
S_030_0: /* 2 */
		now.PAY_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAY_bo.oblig", ((int)now.PAY_bo.oblig));
#endif
		;
S_031_0: /* 2 */
		now.PAY_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("PAY_bo.prohib", ((int)now.PAY_bo.prohib));
#endif
		;
S_032_0: /* 2 */
		now.PAY_bo.executed = 0;
#ifdef VAR_RANGES
		logval("PAY_bo.executed", ((int)now.PAY_bo.executed));
#endif
		;
S_033_0: /* 2 */
		now.PAY_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("PAY_bo.id", ((int)now.PAY_bo.id));
#endif
		;
		goto S_044_0;
S_044_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 291: // STATE 44 - ./BizOperation.h:160 - [D_STEP160]
		IfNotBlocked

		reached[0][44] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_036_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_037_0: /* 2 */
		now.CANC_bo.role_pl = 11;
#ifdef VAR_RANGES
		logval("CANC_bo.role_pl", ((int)now.CANC_bo.role_pl));
#endif
		;
S_038_0: /* 2 */
		now.CANC_bo.right = 0;
#ifdef VAR_RANGES
		logval("CANC_bo.right", ((int)now.CANC_bo.right));
#endif
		;
S_039_0: /* 2 */
		now.CANC_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("CANC_bo.oblig", ((int)now.CANC_bo.oblig));
#endif
		;
S_040_0: /* 2 */
		now.CANC_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("CANC_bo.prohib", ((int)now.CANC_bo.prohib));
#endif
		;
S_041_0: /* 2 */
		now.CANC_bo.executed = 0;
#ifdef VAR_RANGES
		logval("CANC_bo.executed", ((int)now.CANC_bo.executed));
#endif
		;
S_042_0: /* 2 */
		now.CANC_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("CANC_bo.id", ((int)now.CANC_bo.id));
#endif
		;
		goto S_053_0;
S_053_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 292: // STATE 53 - ./BizOperation.h:160 - [D_STEP160]
		IfNotBlocked

		reached[0][53] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_045_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_046_0: /* 2 */
		now.GETVOU_bo.role_pl = 11;
#ifdef VAR_RANGES
		logval("GETVOU_bo.role_pl", ((int)now.GETVOU_bo.role_pl));
#endif
		;
S_047_0: /* 2 */
		now.GETVOU_bo.right = 0;
#ifdef VAR_RANGES
		logval("GETVOU_bo.right", ((int)now.GETVOU_bo.right));
#endif
		;
S_048_0: /* 2 */
		now.GETVOU_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("GETVOU_bo.oblig", ((int)now.GETVOU_bo.oblig));
#endif
		;
S_049_0: /* 2 */
		now.GETVOU_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("GETVOU_bo.prohib", ((int)now.GETVOU_bo.prohib));
#endif
		;
S_050_0: /* 2 */
		now.GETVOU_bo.executed = 0;
#ifdef VAR_RANGES
		logval("GETVOU_bo.executed", ((int)now.GETVOU_bo.executed));
#endif
		;
S_051_0: /* 2 */
		now.GETVOU_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("GETVOU_bo.id", ((int)now.GETVOU_bo.id));
#endif
		;
		goto S_062_0;
S_062_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 293: // STATE 62 - ./BizOperation.h:160 - [D_STEP160]
		IfNotBlocked

		reached[0][62] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_054_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_055_0: /* 2 */
		now.REJCONFTO_bo.role_pl = 10;
#ifdef VAR_RANGES
		logval("REJCONFTO_bo.role_pl", ((int)now.REJCONFTO_bo.role_pl));
#endif
		;
S_056_0: /* 2 */
		now.REJCONFTO_bo.right = 0;
#ifdef VAR_RANGES
		logval("REJCONFTO_bo.right", ((int)now.REJCONFTO_bo.right));
#endif
		;
S_057_0: /* 2 */
		now.REJCONFTO_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("REJCONFTO_bo.oblig", ((int)now.REJCONFTO_bo.oblig));
#endif
		;
S_058_0: /* 2 */
		now.REJCONFTO_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("REJCONFTO_bo.prohib", ((int)now.REJCONFTO_bo.prohib));
#endif
		;
S_059_0: /* 2 */
		now.REJCONFTO_bo.executed = 0;
#ifdef VAR_RANGES
		logval("REJCONFTO_bo.executed", ((int)now.REJCONFTO_bo.executed));
#endif
		;
S_060_0: /* 2 */
		now.REJCONFTO_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("REJCONFTO_bo.id", ((int)now.REJCONFTO_bo.id));
#endif
		;
		goto S_071_0;
S_071_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 294: // STATE 71 - ./BizOperation.h:160 - [D_STEP160]
		IfNotBlocked

		reached[0][71] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;

		if (TstOnly) return 1;

		sv_save();
		S_063_0: /* 2 */
		now.cntttr = (((int)now.cntttr)+1);
#ifdef VAR_RANGES
		logval("cntttr", ((int)now.cntttr));
#endif
		;
S_064_0: /* 2 */
		now.PAYCANCTO_bo.role_pl = 11;
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.role_pl", ((int)now.PAYCANCTO_bo.role_pl));
#endif
		;
S_065_0: /* 2 */
		now.PAYCANCTO_bo.right = 0;
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.right", ((int)now.PAYCANCTO_bo.right));
#endif
		;
S_066_0: /* 2 */
		now.PAYCANCTO_bo.oblig = 0;
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.oblig", ((int)now.PAYCANCTO_bo.oblig));
#endif
		;
S_067_0: /* 2 */
		now.PAYCANCTO_bo.prohib = 0;
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.prohib", ((int)now.PAYCANCTO_bo.prohib));
#endif
		;
S_068_0: /* 2 */
		now.PAYCANCTO_bo.executed = 0;
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.executed", ((int)now.PAYCANCTO_bo.executed));
#endif
		;
S_069_0: /* 2 */
		now.PAYCANCTO_bo.id = ((int)now.cntttr);
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.id", ((int)now.PAYCANCTO_bo.id));
#endif
		;
		goto S_634_0;
S_634_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 295: // STATE 74 - dataseller.pml:146 - [((((BUYRQ_bo.right==1)||(BUYRQ_bo.oblig==1))||(BUYRQ_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][74] = 1;
		if (!((((((int)now.BUYRQ_bo.right)==1)||(((int)now.BUYRQ_bo.oblig)==1))||(((int)now.BUYRQ_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 296: // STATE 75 - dataseller.pml:146 - [BUYRQ_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYRQ_bo.status);
		now.BUYRQ_bo.status = 15;
#ifdef VAR_RANGES
		logval("BUYRQ_bo.status", ((int)now.BUYRQ_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 297: // STATE 76 - ./BizOperation.h:389 - [BEG2CRM!16,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 16, 15, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 298: // STATE 78 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][78] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 299: // STATE 81 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][81] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 300: // STATE 84 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][84] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 301: // STATE 87 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][87] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 302: // STATE 90 - ./BizOperation.h:396 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][90] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 303: // STATE 93 - ./BizOperation.h:396 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][93] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 304: // STATE 96 - ./BizOperation.h:396 - [CRM2BEG?6,2] (0:0:0 - 1)
		reached[0][96] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 305: // STATE 99 - ./BizOperation.h:396 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][99] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 306: // STATE 102 - ./BizOperation.h:396 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][102] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 307: // STATE 105 - ./BizOperation.h:396 - [CRM2BEG?6,1] (0:0:0 - 1)
		reached[0][105] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 308: // STATE 111 - dataseller.pml:147 - [((((BUYRQ_bo.right==1)||(BUYRQ_bo.oblig==1))||(BUYRQ_bo.prohib==1)))] (114:0:1 - 1)
		IfNotBlocked
		reached[0][111] = 1;
		if (!((((((int)now.BUYRQ_bo.right)==1)||(((int)now.BUYRQ_bo.oblig)==1))||(((int)now.BUYRQ_bo.prohib)==1))))
			continue;
		/* merge: BUYRQ_bo.status = BF(0, 112, 114) */
		reached[0][112] = 1;
		(trpt+1)->bup.oval = ((int)now.BUYRQ_bo.status);
		now.BUYRQ_bo.status = 14;
#ifdef VAR_RANGES
		logval("BUYRQ_bo.status", ((int)now.BUYRQ_bo.status));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 309: // STATE 113 - ./BizOperation.h:389 - [BEG2CRM!16,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][113] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 16); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 16, 14, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 310: // STATE 115 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][115] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 311: // STATE 118 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][118] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 312: // STATE 121 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][121] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 313: // STATE 124 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][124] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 314: // STATE 127 - ./BizOperation.h:396 - [CRM2BEG?8,2] (73:0:0 - 1)
		reached[0][127] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 129, 73) */
		reached[0][129] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 315: // STATE 130 - ./BizOperation.h:396 - [CRM2BEG?7,2] (73:0:0 - 1)
		reached[0][130] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 132, 73) */
		reached[0][132] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 316: // STATE 133 - ./BizOperation.h:396 - [CRM2BEG?6,2] (73:0:0 - 1)
		reached[0][133] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 135, 73) */
		reached[0][135] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 317: // STATE 136 - ./BizOperation.h:396 - [CRM2BEG?8,1] (634:0:0 - 1)
		reached[0][136] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 138, 634) */
		reached[0][138] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 318: // STATE 139 - ./BizOperation.h:396 - [CRM2BEG?7,1] (634:0:0 - 1)
		reached[0][139] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 141, 634) */
		reached[0][141] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 319: // STATE 142 - ./BizOperation.h:396 - [CRM2BEG?6,1] (634:0:0 - 1)
		reached[0][142] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 144, 634) */
		reached[0][144] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 320: // STATE 148 - dataseller.pml:149 - [((numbuyreqbizfail<2))] (634:0:1 - 1)
		IfNotBlocked
		reached[0][148] = 1;
		if (!((((P0 *)this)->numbuyreqbizfail<2)))
			continue;
		/* merge: numbuyreqbizfail = (numbuyreqbizfail+1)(634, 149, 634) */
		reached[0][149] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->numbuyreqbizfail;
		((P0 *)this)->numbuyreqbizfail = (((P0 *)this)->numbuyreqbizfail+1);
#ifdef VAR_RANGES
		logval("BEG:numbuyreqbizfail", ((P0 *)this)->numbuyreqbizfail);
#endif
		;
		/* merge: .(goto)(634, 153, 634) */
		reached[0][153] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 321: // STATE 153 - dataseller.pml:151 - [.(goto)] (0:634:0 - 2)
		IfNotBlocked
		reached[0][153] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 322: // STATE 150 - dataseller.pml:150 - [((numbuyreqbizfail==2))] (634:0:1 - 1)
		IfNotBlocked
		reached[0][150] = 1;
		if (!((((P0 *)this)->numbuyreqbizfail==2)))
			continue;
		/* merge: buyreqbizfail = 1(634, 151, 634) */
		reached[0][151] = 1;
		(trpt+1)->bup.oval = ((int)now.buyreqbizfail);
		now.buyreqbizfail = 1;
#ifdef VAR_RANGES
		logval("buyreqbizfail", ((int)now.buyreqbizfail));
#endif
		;
		/* merge: .(goto)(634, 153, 634) */
		reached[0][153] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 323: // STATE 155 - dataseller.pml:153 - [((((REJ_bo.right==1)||(REJ_bo.oblig==1))||(REJ_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][155] = 1;
		if (!((((((int)now.REJ_bo.right)==1)||(((int)now.REJ_bo.oblig)==1))||(((int)now.REJ_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 324: // STATE 156 - dataseller.pml:153 - [REJ_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][156] = 1;
		(trpt+1)->bup.oval = ((int)now.REJ_bo.status);
		now.REJ_bo.status = 15;
#ifdef VAR_RANGES
		logval("REJ_bo.status", ((int)now.REJ_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 325: // STATE 157 - ./BizOperation.h:389 - [BEG2CRM!17,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][157] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 17, 15, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 326: // STATE 159 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][159] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 327: // STATE 162 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][162] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 328: // STATE 165 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][165] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 329: // STATE 168 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][168] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 330: // STATE 171 - ./BizOperation.h:396 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][171] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 331: // STATE 174 - ./BizOperation.h:396 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][174] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 332: // STATE 177 - ./BizOperation.h:396 - [CRM2BEG?6,2] (0:0:0 - 1)
		reached[0][177] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 333: // STATE 180 - ./BizOperation.h:396 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][180] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 334: // STATE 183 - ./BizOperation.h:396 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][183] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 335: // STATE 186 - ./BizOperation.h:396 - [CRM2BEG?6,1] (0:0:0 - 1)
		reached[0][186] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 336: // STATE 192 - dataseller.pml:154 - [((((REJ_bo.right==1)||(REJ_bo.oblig==1))||(REJ_bo.prohib==1)))] (195:0:1 - 1)
		IfNotBlocked
		reached[0][192] = 1;
		if (!((((((int)now.REJ_bo.right)==1)||(((int)now.REJ_bo.oblig)==1))||(((int)now.REJ_bo.prohib)==1))))
			continue;
		/* merge: REJ_bo.status = BF(0, 193, 195) */
		reached[0][193] = 1;
		(trpt+1)->bup.oval = ((int)now.REJ_bo.status);
		now.REJ_bo.status = 14;
#ifdef VAR_RANGES
		logval("REJ_bo.status", ((int)now.REJ_bo.status));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 337: // STATE 194 - ./BizOperation.h:389 - [BEG2CRM!17,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][194] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 17); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 17, 14, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 338: // STATE 196 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][196] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 339: // STATE 199 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][199] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 340: // STATE 202 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][202] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 341: // STATE 205 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][205] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 342: // STATE 208 - ./BizOperation.h:396 - [CRM2BEG?8,2] (73:0:0 - 1)
		reached[0][208] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 210, 73) */
		reached[0][210] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 343: // STATE 211 - ./BizOperation.h:396 - [CRM2BEG?7,2] (73:0:0 - 1)
		reached[0][211] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 213, 73) */
		reached[0][213] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 344: // STATE 214 - ./BizOperation.h:396 - [CRM2BEG?6,2] (73:0:0 - 1)
		reached[0][214] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 216, 73) */
		reached[0][216] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 345: // STATE 217 - ./BizOperation.h:396 - [CRM2BEG?8,1] (634:0:0 - 1)
		reached[0][217] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 219, 634) */
		reached[0][219] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 346: // STATE 220 - ./BizOperation.h:396 - [CRM2BEG?7,1] (634:0:0 - 1)
		reached[0][220] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 222, 634) */
		reached[0][222] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 347: // STATE 223 - ./BizOperation.h:396 - [CRM2BEG?6,1] (634:0:0 - 1)
		reached[0][223] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 225, 634) */
		reached[0][225] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 348: // STATE 229 - dataseller.pml:156 - [((numrejbizfail<2))] (634:0:1 - 1)
		IfNotBlocked
		reached[0][229] = 1;
		if (!((((P0 *)this)->numrejbizfail<2)))
			continue;
		/* merge: numrejbizfail = (numrejbizfail+1)(634, 230, 634) */
		reached[0][230] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->numrejbizfail;
		((P0 *)this)->numrejbizfail = (((P0 *)this)->numrejbizfail+1);
#ifdef VAR_RANGES
		logval("BEG:numrejbizfail", ((P0 *)this)->numrejbizfail);
#endif
		;
		/* merge: .(goto)(634, 234, 634) */
		reached[0][234] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 349: // STATE 234 - dataseller.pml:158 - [.(goto)] (0:634:0 - 2)
		IfNotBlocked
		reached[0][234] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 350: // STATE 231 - dataseller.pml:157 - [((numrejbizfail==2))] (634:0:1 - 1)
		IfNotBlocked
		reached[0][231] = 1;
		if (!((((P0 *)this)->numrejbizfail==2)))
			continue;
		/* merge: rejbizfail = 1(634, 232, 634) */
		reached[0][232] = 1;
		(trpt+1)->bup.oval = ((int)now.rejbizfail);
		now.rejbizfail = 1;
#ifdef VAR_RANGES
		logval("rejbizfail", ((int)now.rejbizfail));
#endif
		;
		/* merge: .(goto)(634, 234, 634) */
		reached[0][234] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 351: // STATE 236 - dataseller.pml:160 - [((((CONF_bo.right==1)||(CONF_bo.oblig==1))||(CONF_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][236] = 1;
		if (!((((((int)now.CONF_bo.right)==1)||(((int)now.CONF_bo.oblig)==1))||(((int)now.CONF_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 352: // STATE 237 - dataseller.pml:160 - [CONF_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][237] = 1;
		(trpt+1)->bup.oval = ((int)now.CONF_bo.status);
		now.CONF_bo.status = 15;
#ifdef VAR_RANGES
		logval("CONF_bo.status", ((int)now.CONF_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 353: // STATE 238 - ./BizOperation.h:389 - [BEG2CRM!18,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][238] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 18); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 18, 15, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 354: // STATE 240 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][240] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 355: // STATE 243 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][243] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 356: // STATE 246 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][246] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 357: // STATE 249 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][249] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 358: // STATE 252 - ./BizOperation.h:396 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][252] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 359: // STATE 255 - ./BizOperation.h:396 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][255] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 360: // STATE 258 - ./BizOperation.h:396 - [CRM2BEG?6,2] (0:0:0 - 1)
		reached[0][258] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 361: // STATE 261 - ./BizOperation.h:396 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][261] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 362: // STATE 264 - ./BizOperation.h:396 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][264] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 363: // STATE 267 - ./BizOperation.h:396 - [CRM2BEG?6,1] (0:0:0 - 1)
		reached[0][267] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 364: // STATE 273 - dataseller.pml:161 - [((((CONF_bo.right==1)||(CONF_bo.oblig==1))||(CONF_bo.prohib==1)))] (276:0:1 - 1)
		IfNotBlocked
		reached[0][273] = 1;
		if (!((((((int)now.CONF_bo.right)==1)||(((int)now.CONF_bo.oblig)==1))||(((int)now.CONF_bo.prohib)==1))))
			continue;
		/* merge: CONF_bo.status = BF(0, 274, 276) */
		reached[0][274] = 1;
		(trpt+1)->bup.oval = ((int)now.CONF_bo.status);
		now.CONF_bo.status = 14;
#ifdef VAR_RANGES
		logval("CONF_bo.status", ((int)now.CONF_bo.status));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 365: // STATE 275 - ./BizOperation.h:389 - [BEG2CRM!18,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][275] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 18); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 18, 14, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 366: // STATE 277 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][277] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 367: // STATE 280 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][280] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 368: // STATE 283 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][283] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 369: // STATE 286 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][286] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 370: // STATE 289 - ./BizOperation.h:396 - [CRM2BEG?8,2] (73:0:0 - 1)
		reached[0][289] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 291, 73) */
		reached[0][291] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 371: // STATE 292 - ./BizOperation.h:396 - [CRM2BEG?7,2] (73:0:0 - 1)
		reached[0][292] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 294, 73) */
		reached[0][294] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 372: // STATE 295 - ./BizOperation.h:396 - [CRM2BEG?6,2] (73:0:0 - 1)
		reached[0][295] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 297, 73) */
		reached[0][297] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 373: // STATE 298 - ./BizOperation.h:396 - [CRM2BEG?8,1] (634:0:0 - 1)
		reached[0][298] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 300, 634) */
		reached[0][300] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 374: // STATE 301 - ./BizOperation.h:396 - [CRM2BEG?7,1] (634:0:0 - 1)
		reached[0][301] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 303, 634) */
		reached[0][303] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 375: // STATE 304 - ./BizOperation.h:396 - [CRM2BEG?6,1] (634:0:0 - 1)
		reached[0][304] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 306, 634) */
		reached[0][306] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 376: // STATE 310 - dataseller.pml:163 - [((numconfbizfail<2))] (634:0:1 - 1)
		IfNotBlocked
		reached[0][310] = 1;
		if (!((((P0 *)this)->numconfbizfail<2)))
			continue;
		/* merge: numconfbizfail = (numconfbizfail+1)(634, 311, 634) */
		reached[0][311] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->numconfbizfail;
		((P0 *)this)->numconfbizfail = (((P0 *)this)->numconfbizfail+1);
#ifdef VAR_RANGES
		logval("BEG:numconfbizfail", ((P0 *)this)->numconfbizfail);
#endif
		;
		/* merge: .(goto)(634, 315, 634) */
		reached[0][315] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 377: // STATE 315 - dataseller.pml:165 - [.(goto)] (0:634:0 - 2)
		IfNotBlocked
		reached[0][315] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 378: // STATE 312 - dataseller.pml:164 - [((numconfbizfail==2))] (634:0:1 - 1)
		IfNotBlocked
		reached[0][312] = 1;
		if (!((((P0 *)this)->numconfbizfail==2)))
			continue;
		/* merge: confbizfail = 1(634, 313, 634) */
		reached[0][313] = 1;
		(trpt+1)->bup.oval = ((int)now.confbizfail);
		now.confbizfail = 1;
#ifdef VAR_RANGES
		logval("confbizfail", ((int)now.confbizfail));
#endif
		;
		/* merge: .(goto)(634, 315, 634) */
		reached[0][315] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 379: // STATE 317 - dataseller.pml:167 - [((((PAY_bo.right==1)||(PAY_bo.oblig==1))||(PAY_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][317] = 1;
		if (!((((((int)now.PAY_bo.right)==1)||(((int)now.PAY_bo.oblig)==1))||(((int)now.PAY_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 380: // STATE 318 - dataseller.pml:167 - [PAY_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][318] = 1;
		(trpt+1)->bup.oval = ((int)now.PAY_bo.status);
		now.PAY_bo.status = 15;
#ifdef VAR_RANGES
		logval("PAY_bo.status", ((int)now.PAY_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 381: // STATE 319 - ./BizOperation.h:389 - [BEG2CRM!19,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][319] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 19); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 19, 15, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 382: // STATE 321 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][321] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 383: // STATE 324 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][324] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 384: // STATE 327 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][327] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 385: // STATE 330 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][330] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 386: // STATE 333 - ./BizOperation.h:396 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][333] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 387: // STATE 336 - ./BizOperation.h:396 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][336] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 388: // STATE 339 - ./BizOperation.h:396 - [CRM2BEG?6,2] (0:0:0 - 1)
		reached[0][339] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 389: // STATE 342 - ./BizOperation.h:396 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][342] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 390: // STATE 345 - ./BizOperation.h:396 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][345] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 391: // STATE 348 - ./BizOperation.h:396 - [CRM2BEG?6,1] (0:0:0 - 1)
		reached[0][348] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 392: // STATE 354 - dataseller.pml:168 - [((((PAY_bo.right==1)||(PAY_bo.oblig==1))||(PAY_bo.prohib==1)))] (357:0:1 - 1)
		IfNotBlocked
		reached[0][354] = 1;
		if (!((((((int)now.PAY_bo.right)==1)||(((int)now.PAY_bo.oblig)==1))||(((int)now.PAY_bo.prohib)==1))))
			continue;
		/* merge: PAY_bo.status = BF(0, 355, 357) */
		reached[0][355] = 1;
		(trpt+1)->bup.oval = ((int)now.PAY_bo.status);
		now.PAY_bo.status = 14;
#ifdef VAR_RANGES
		logval("PAY_bo.status", ((int)now.PAY_bo.status));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 393: // STATE 356 - ./BizOperation.h:389 - [BEG2CRM!19,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][356] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 19); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 19, 14, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 394: // STATE 358 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][358] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 395: // STATE 361 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][361] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 396: // STATE 364 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][364] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 397: // STATE 367 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][367] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 398: // STATE 370 - ./BizOperation.h:396 - [CRM2BEG?8,2] (73:0:0 - 1)
		reached[0][370] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 372, 73) */
		reached[0][372] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 399: // STATE 373 - ./BizOperation.h:396 - [CRM2BEG?7,2] (73:0:0 - 1)
		reached[0][373] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 375, 73) */
		reached[0][375] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 400: // STATE 376 - ./BizOperation.h:396 - [CRM2BEG?6,2] (73:0:0 - 1)
		reached[0][376] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 378, 73) */
		reached[0][378] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 401: // STATE 379 - ./BizOperation.h:396 - [CRM2BEG?8,1] (634:0:0 - 1)
		reached[0][379] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 381, 634) */
		reached[0][381] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 402: // STATE 382 - ./BizOperation.h:396 - [CRM2BEG?7,1] (634:0:0 - 1)
		reached[0][382] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 384, 634) */
		reached[0][384] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 403: // STATE 385 - ./BizOperation.h:396 - [CRM2BEG?6,1] (634:0:0 - 1)
		reached[0][385] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 387, 634) */
		reached[0][387] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 404: // STATE 391 - dataseller.pml:170 - [((numpaybizfail<2))] (634:0:1 - 1)
		IfNotBlocked
		reached[0][391] = 1;
		if (!((((P0 *)this)->numpaybizfail<2)))
			continue;
		/* merge: numpaybizfail = (numpaybizfail+1)(634, 392, 634) */
		reached[0][392] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->numpaybizfail;
		((P0 *)this)->numpaybizfail = (((P0 *)this)->numpaybizfail+1);
#ifdef VAR_RANGES
		logval("BEG:numpaybizfail", ((P0 *)this)->numpaybizfail);
#endif
		;
		/* merge: .(goto)(634, 396, 634) */
		reached[0][396] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 405: // STATE 396 - dataseller.pml:172 - [.(goto)] (0:634:0 - 2)
		IfNotBlocked
		reached[0][396] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 406: // STATE 393 - dataseller.pml:171 - [((numpaybizfail==2))] (634:0:1 - 1)
		IfNotBlocked
		reached[0][393] = 1;
		if (!((((P0 *)this)->numpaybizfail==2)))
			continue;
		/* merge: paybizfail = 1(634, 394, 634) */
		reached[0][394] = 1;
		(trpt+1)->bup.oval = ((int)now.paybizfail);
		now.paybizfail = 1;
#ifdef VAR_RANGES
		logval("paybizfail", ((int)now.paybizfail));
#endif
		;
		/* merge: .(goto)(634, 396, 634) */
		reached[0][396] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 407: // STATE 398 - dataseller.pml:174 - [((((GETVOU_bo.right==1)||(GETVOU_bo.oblig==1))||(GETVOU_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][398] = 1;
		if (!((((((int)now.GETVOU_bo.right)==1)||(((int)now.GETVOU_bo.oblig)==1))||(((int)now.GETVOU_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 408: // STATE 399 - dataseller.pml:174 - [GETVOU_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][399] = 1;
		(trpt+1)->bup.oval = ((int)now.GETVOU_bo.status);
		now.GETVOU_bo.status = 15;
#ifdef VAR_RANGES
		logval("GETVOU_bo.status", ((int)now.GETVOU_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 409: // STATE 400 - ./BizOperation.h:389 - [BEG2CRM!21,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][400] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 21); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 21, 15, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 410: // STATE 402 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][402] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 411: // STATE 405 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][405] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 412: // STATE 408 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][408] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 413: // STATE 411 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][411] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 414: // STATE 414 - ./BizOperation.h:396 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][414] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 415: // STATE 417 - ./BizOperation.h:396 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][417] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 416: // STATE 420 - ./BizOperation.h:396 - [CRM2BEG?6,2] (0:0:0 - 1)
		reached[0][420] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 417: // STATE 423 - ./BizOperation.h:396 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][423] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 418: // STATE 426 - ./BizOperation.h:396 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][426] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 419: // STATE 429 - ./BizOperation.h:396 - [CRM2BEG?6,1] (0:0:0 - 1)
		reached[0][429] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 420: // STATE 435 - dataseller.pml:175 - [((((GETVOU_bo.right==1)||(GETVOU_bo.oblig==1))||(GETVOU_bo.prohib==1)))] (438:0:1 - 1)
		IfNotBlocked
		reached[0][435] = 1;
		if (!((((((int)now.GETVOU_bo.right)==1)||(((int)now.GETVOU_bo.oblig)==1))||(((int)now.GETVOU_bo.prohib)==1))))
			continue;
		/* merge: GETVOU_bo.status = TO(0, 436, 438) */
		reached[0][436] = 1;
		(trpt+1)->bup.oval = ((int)now.GETVOU_bo.status);
		now.GETVOU_bo.status = 12;
#ifdef VAR_RANGES
		logval("GETVOU_bo.status", ((int)now.GETVOU_bo.status));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 421: // STATE 437 - ./BizOperation.h:389 - [BEG2CRM!21,12] (0:0:0 - 1)
		IfNotBlocked
		reached[0][437] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 21); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 12); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 21, 12, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 422: // STATE 439 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][439] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 423: // STATE 442 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][442] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 424: // STATE 445 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][445] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 425: // STATE 448 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][448] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 426: // STATE 451 - ./BizOperation.h:396 - [CRM2BEG?8,2] (73:0:0 - 1)
		reached[0][451] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 453, 73) */
		reached[0][453] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 427: // STATE 454 - ./BizOperation.h:396 - [CRM2BEG?7,2] (73:0:0 - 1)
		reached[0][454] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 456, 73) */
		reached[0][456] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 428: // STATE 457 - ./BizOperation.h:396 - [CRM2BEG?6,2] (73:0:0 - 1)
		reached[0][457] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 459, 73) */
		reached[0][459] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 429: // STATE 460 - ./BizOperation.h:396 - [CRM2BEG?8,1] (634:0:0 - 1)
		reached[0][460] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 462, 634) */
		reached[0][462] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 430: // STATE 463 - ./BizOperation.h:396 - [CRM2BEG?7,1] (634:0:0 - 1)
		reached[0][463] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 465, 634) */
		reached[0][465] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 431: // STATE 466 - ./BizOperation.h:396 - [CRM2BEG?6,1] (634:0:0 - 1)
		reached[0][466] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 468, 634) */
		reached[0][468] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 432: // STATE 472 - dataseller.pml:177 - [((numgetvoubizfail<2))] (634:0:1 - 1)
		IfNotBlocked
		reached[0][472] = 1;
		if (!((((P0 *)this)->numgetvoubizfail<2)))
			continue;
		/* merge: numgetvoubizfail = (numgetvoubizfail+1)(634, 473, 634) */
		reached[0][473] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->numgetvoubizfail;
		((P0 *)this)->numgetvoubizfail = (((P0 *)this)->numgetvoubizfail+1);
#ifdef VAR_RANGES
		logval("BEG:numgetvoubizfail", ((P0 *)this)->numgetvoubizfail);
#endif
		;
		/* merge: .(goto)(634, 477, 634) */
		reached[0][477] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 433: // STATE 477 - dataseller.pml:179 - [.(goto)] (0:634:0 - 2)
		IfNotBlocked
		reached[0][477] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 434: // STATE 474 - dataseller.pml:178 - [((numgetvoubizfail==2))] (634:0:1 - 1)
		IfNotBlocked
		reached[0][474] = 1;
		if (!((((P0 *)this)->numgetvoubizfail==2)))
			continue;
		/* merge: getvoubizfail = 1(634, 475, 634) */
		reached[0][475] = 1;
		(trpt+1)->bup.oval = ((int)now.getvoubizfail);
		now.getvoubizfail = 1;
#ifdef VAR_RANGES
		logval("getvoubizfail", ((int)now.getvoubizfail));
#endif
		;
		/* merge: .(goto)(634, 477, 634) */
		reached[0][477] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 435: // STATE 479 - dataseller.pml:181 - [((((CANC_bo.right==1)||(CANC_bo.oblig==1))||(CANC_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][479] = 1;
		if (!((((((int)now.CANC_bo.right)==1)||(((int)now.CANC_bo.oblig)==1))||(((int)now.CANC_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 436: // STATE 480 - dataseller.pml:181 - [CANC_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][480] = 1;
		(trpt+1)->bup.oval = ((int)now.CANC_bo.status);
		now.CANC_bo.status = 15;
#ifdef VAR_RANGES
		logval("CANC_bo.status", ((int)now.CANC_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 437: // STATE 481 - ./BizOperation.h:389 - [BEG2CRM!20,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][481] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 20); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 20, 15, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 438: // STATE 483 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][483] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 439: // STATE 486 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][486] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 440: // STATE 489 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][489] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 441: // STATE 492 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][492] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 442: // STATE 495 - ./BizOperation.h:396 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][495] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 443: // STATE 498 - ./BizOperation.h:396 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][498] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 444: // STATE 501 - ./BizOperation.h:396 - [CRM2BEG?6,2] (0:0:0 - 1)
		reached[0][501] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 445: // STATE 504 - ./BizOperation.h:396 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][504] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 446: // STATE 507 - ./BizOperation.h:396 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][507] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 447: // STATE 510 - ./BizOperation.h:396 - [CRM2BEG?6,1] (0:0:0 - 1)
		reached[0][510] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 448: // STATE 516 - dataseller.pml:182 - [((((CANC_bo.right==1)||(CANC_bo.oblig==1))||(CANC_bo.prohib==1)))] (519:0:1 - 1)
		IfNotBlocked
		reached[0][516] = 1;
		if (!((((((int)now.CANC_bo.right)==1)||(((int)now.CANC_bo.oblig)==1))||(((int)now.CANC_bo.prohib)==1))))
			continue;
		/* merge: CANC_bo.status = BF(0, 517, 519) */
		reached[0][517] = 1;
		(trpt+1)->bup.oval = ((int)now.CANC_bo.status);
		now.CANC_bo.status = 14;
#ifdef VAR_RANGES
		logval("CANC_bo.status", ((int)now.CANC_bo.status));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 449: // STATE 518 - ./BizOperation.h:389 - [BEG2CRM!20,14] (0:0:0 - 1)
		IfNotBlocked
		reached[0][518] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 20); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 14); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 20, 14, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 450: // STATE 520 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][520] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 451: // STATE 523 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][523] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 452: // STATE 526 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][526] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 453: // STATE 529 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][529] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 454: // STATE 532 - ./BizOperation.h:396 - [CRM2BEG?8,2] (73:0:0 - 1)
		reached[0][532] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 534, 73) */
		reached[0][534] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 455: // STATE 535 - ./BizOperation.h:396 - [CRM2BEG?7,2] (73:0:0 - 1)
		reached[0][535] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 537, 73) */
		reached[0][537] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 456: // STATE 538 - ./BizOperation.h:396 - [CRM2BEG?6,2] (73:0:0 - 1)
		reached[0][538] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto BEGIN_INIT(0, 540, 73) */
		reached[0][540] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 457: // STATE 541 - ./BizOperation.h:396 - [CRM2BEG?8,1] (634:0:0 - 1)
		reached[0][541] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 543, 634) */
		reached[0][543] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 458: // STATE 544 - ./BizOperation.h:396 - [CRM2BEG?7,1] (634:0:0 - 1)
		reached[0][544] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 546, 634) */
		reached[0][546] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 459: // STATE 547 - ./BizOperation.h:396 - [CRM2BEG?6,1] (634:0:0 - 1)
		reached[0][547] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: goto END_INIT(0, 549, 634) */
		reached[0][549] = 1;
		;
		_m = 4; goto P999; /* 1 */
	case 460: // STATE 553 - dataseller.pml:184 - [((numcancbizfail<2))] (634:0:1 - 1)
		IfNotBlocked
		reached[0][553] = 1;
		if (!((((P0 *)this)->numcancbizfail<2)))
			continue;
		/* merge: numcancbizfail = (numcancbizfail+1)(634, 554, 634) */
		reached[0][554] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->numcancbizfail;
		((P0 *)this)->numcancbizfail = (((P0 *)this)->numcancbizfail+1);
#ifdef VAR_RANGES
		logval("BEG:numcancbizfail", ((P0 *)this)->numcancbizfail);
#endif
		;
		/* merge: .(goto)(634, 558, 634) */
		reached[0][558] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 461: // STATE 558 - dataseller.pml:186 - [.(goto)] (0:634:0 - 2)
		IfNotBlocked
		reached[0][558] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 462: // STATE 555 - dataseller.pml:185 - [((numcancbizfail==2))] (634:0:1 - 1)
		IfNotBlocked
		reached[0][555] = 1;
		if (!((((P0 *)this)->numcancbizfail==2)))
			continue;
		/* merge: cancbizfail = 1(634, 556, 634) */
		reached[0][556] = 1;
		(trpt+1)->bup.oval = ((int)now.cancbizfail);
		now.cancbizfail = 1;
#ifdef VAR_RANGES
		logval("cancbizfail", ((int)now.cancbizfail));
#endif
		;
		/* merge: .(goto)(634, 558, 634) */
		reached[0][558] = 1;
		;
		/* merge: .(goto)(0, 635, 634) */
		reached[0][635] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 463: // STATE 560 - dataseller.pml:188 - [((((REJCONFTO_bo.right==1)||(REJCONFTO_bo.oblig==1))||(REJCONFTO_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][560] = 1;
		if (!((((((int)now.REJCONFTO_bo.right)==1)||(((int)now.REJCONFTO_bo.oblig)==1))||(((int)now.REJCONFTO_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 464: // STATE 561 - dataseller.pml:188 - [REJCONFTO_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][561] = 1;
		(trpt+1)->bup.oval = ((int)now.REJCONFTO_bo.status);
		now.REJCONFTO_bo.status = 15;
#ifdef VAR_RANGES
		logval("REJCONFTO_bo.status", ((int)now.REJCONFTO_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 465: // STATE 562 - ./BizOperation.h:389 - [BEG2CRM!22,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][562] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 22); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 22, 15, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 466: // STATE 564 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][564] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 467: // STATE 567 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][567] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 468: // STATE 570 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][570] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 469: // STATE 573 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][573] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 470: // STATE 576 - ./BizOperation.h:396 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][576] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 471: // STATE 579 - ./BizOperation.h:396 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][579] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 472: // STATE 582 - ./BizOperation.h:396 - [CRM2BEG?6,2] (0:0:0 - 1)
		reached[0][582] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 473: // STATE 585 - ./BizOperation.h:396 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][585] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 474: // STATE 588 - ./BizOperation.h:396 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][588] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 475: // STATE 591 - ./BizOperation.h:396 - [CRM2BEG?6,1] (0:0:0 - 1)
		reached[0][591] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 476: // STATE 597 - dataseller.pml:189 - [((((PAYCANCTO_bo.right==1)||(PAYCANCTO_bo.oblig==1))||(PAYCANCTO_bo.prohib==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][597] = 1;
		if (!((((((int)now.PAYCANCTO_bo.right)==1)||(((int)now.PAYCANCTO_bo.oblig)==1))||(((int)now.PAYCANCTO_bo.prohib)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 477: // STATE 598 - dataseller.pml:189 - [PAYCANCTO_bo.status = S] (0:0:1 - 1)
		IfNotBlocked
		reached[0][598] = 1;
		(trpt+1)->bup.oval = ((int)now.PAYCANCTO_bo.status);
		now.PAYCANCTO_bo.status = 15;
#ifdef VAR_RANGES
		logval("PAYCANCTO_bo.status", ((int)now.PAYCANCTO_bo.status));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 478: // STATE 599 - ./BizOperation.h:389 - [BEG2CRM!23,15] (0:0:0 - 1)
		IfNotBlocked
		reached[0][599] = 1;
		if (q_full(now.BEG2CRM))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.BEG2CRM);
		sprintf(simtmp, "%d", 23); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 15); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.BEG2CRM, 0, 23, 15, 2);
		if (q_zero(now.BEG2CRM)) { boq = now.BEG2CRM; };
		_m = 2; goto P999; /* 0 */
	case 479: // STATE 601 - ./BizOperation.h:396 - [CRM2BEG?8,4] (0:0:0 - 1)
		reached[0][601] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 480: // STATE 604 - ./BizOperation.h:396 - [CRM2BEG?7,4] (0:0:0 - 1)
		reached[0][604] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 481: // STATE 607 - ./BizOperation.h:396 - [CRM2BEG?6,4] (0:0:0 - 1)
		reached[0][607] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 482: // STATE 610 - ./BizOperation.h:396 - [CRM2BEG?5,4] (0:0:0 - 1)
		reached[0][610] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (5 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (4 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 483: // STATE 613 - ./BizOperation.h:396 - [CRM2BEG?8,2] (0:0:0 - 1)
		reached[0][613] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 484: // STATE 616 - ./BizOperation.h:396 - [CRM2BEG?7,2] (0:0:0 - 1)
		reached[0][616] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 485: // STATE 619 - ./BizOperation.h:396 - [CRM2BEG?6,2] (0:0:0 - 1)
		reached[0][619] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (2 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 486: // STATE 622 - ./BizOperation.h:396 - [CRM2BEG?8,1] (0:0:0 - 1)
		reached[0][622] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (8 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 487: // STATE 625 - ./BizOperation.h:396 - [CRM2BEG?7,1] (0:0:0 - 1)
		reached[0][625] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (7 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 488: // STATE 628 - ./BizOperation.h:396 - [CRM2BEG?6,1] (0:0:0 - 1)
		reached[0][628] = 1;
		if (q_zero(now.CRM2BEG))
		{	if (boq != now.CRM2BEG) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.CRM2BEG) == 0) continue;

		XX=1;
		if (6 != qrecv(now.CRM2BEG, 0, 0, 0)) continue;
		if (1 != qrecv(now.CRM2BEG, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.CRM2BEG-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.CRM2BEG, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.CRM2BEG);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.CRM2BEG))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 489: // STATE 637 - dataseller.pml:191 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][637] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

