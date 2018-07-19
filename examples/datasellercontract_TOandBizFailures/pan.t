#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(5*sizeof(Trans **));

	/* proctype 3: never_0 */

	trans[3] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[3][6]	= settr(1479,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[3][5] = settr(1478,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1478,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1478,0,3,0,0,"DO", 0, 2, 0);
	trans[3][1]	= settr(1474,0,10,3,0,"(((buyrj==1)||((pay==1)||((canc==1)||((rejconfto==1)||((paycancto==1)||((paybizfail==1)||((rejbizfail==1)||((buyreqbizfail==1)||((confbizfail==1)||((cancbizfail==1)||(getvoubizfail==1))))))))))))", 1, 2, 0);
	trans[3][2]	= settr(1475,0,10,1,0,"goto accept_S3", 0, 2, 0);
	trans[3][3]	= settr(1476,0,5,1,0,"(1)", 0, 2, 0);
	trans[3][4]	= settr(1477,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[3][7]	= settr(1480,0,10,1,0,"break", 0, 2, 0);
	trans[3][11]	= settr(1484,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[3][10] = settr(1483,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1483,0,8,0,0,"DO", 0, 2, 0);
	trans[3][8]	= settr(1481,0,10,4,0,"(((buyrj==1)||((pay==1)||((canc==1)||((rejconfto==1)||((paycancto==1)||((paybizfail==1)||((rejbizfail==1)||((buyreqbizfail==1)||((confbizfail==1)||((cancbizfail==1)||(getvoubizfail==1))))))))))))", 1, 2, 0);
	trans[3][9]	= settr(1482,0,10,1,0,"goto accept_S3", 0, 2, 0);
	trans[3][12]	= settr(1485,0,13,1,0,"break", 0, 2, 0);
	trans[3][13]	= settr(1486,0,0,5,5,"-end-", 0, 3500, 0);

	/* proctype 2: :init: */

	trans[2] = (Trans **) emalloc(5*sizeof(Trans *));

	T = trans[ 2][3] = settr(1472,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(1472,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[2][1]	= settr(1470,2,2,6,6,"(run BEG())", 0, 2, 0);
	trans[2][2]	= settr(1471,0,4,7,7,"(run CRM())", 0, 2, 0);
	trans[2][4]	= settr(1473,0,0,8,8,"-end-", 0, 3500, 0);

	/* proctype 1: CRM */

	trans[1] = (Trans **) emalloc(834*sizeof(Trans *));

	trans[1][1]	= settr(637,0,830,9,0,"printf('CONTRACT RULE MANAGER')", 0, 2, 0);
	trans[1][831]	= settr(1467,0,830,1,0,".(goto)", 0, 2, 0);
	T = trans[1][830] = settr(1466,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1466,0,12,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1466,0,203,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1466,0,214,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1466,0,433,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1466,0,598,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1466,0,709,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(1466,0,769,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(1466,0,829,0,0,"DO", 0, 2, 0);
	T = trans[ 1][12] = settr(648,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(648,0,10,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][10] = settr(646,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(646,0,2,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(646,0,4,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(646,0,6,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(646,0,8,0,0,"IF", 0, 2, 0);
	trans[1][2]	= settr(638,0,3,10,0,"(BEG2CRM?[16,S])", 1, 2, 0);
	trans[1][3]	= settr(639,0,91,11,11,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][11]	= settr(647,0,91,1,0,".(goto)", 0, 2, 0);
	trans[1][4]	= settr(640,0,5,12,0,"(BEG2CRM?[16,BF])", 1, 2, 0);
	trans[1][5]	= settr(641,0,91,13,13,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][6]	= settr(642,0,7,14,0,"(BEG2CRM?[16,TF])", 1, 2, 0);
	trans[1][7]	= settr(643,0,91,15,15,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][8]	= settr(644,0,9,16,0,"(BEG2CRM?[16,TO])", 1, 2, 0);
	trans[1][9]	= settr(645,0,91,17,17,"BEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][91] = settr(727,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(727,0,89,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][89] = settr(725,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(725,0,13,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(725,0,43,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(725,0,86,0,0,"IF", 0, 2, 0);
	trans[1][13]	= settr(649,0,42,18,0,"((((BUYRQ_bo.right==1)&&((BUYRQ_bo.role_pl==BUYER)==1))&&((BUYRQ_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][42] = settr(678,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(678,0,22,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][22] = settr(658,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(658,2,14,0,0,"ATOMIC", 0, 2, 0);
	trans[1][14]	= settr(650,4,26,19,19,"printf('\\n\\n')", 0, 2, 0); /* m: 15 -> 0,26 */
	reached1[15] = 1;
	trans[1][15]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][16]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][17]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][18]	= settr(0,0,0,0,0,"printf('<type>BUYREQ</type>\\n')",0,0,0);
	trans[1][19]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][20]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][21]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][26] = settr(662,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(662,0,23,0,0,"sub-sequence", 0, 2, 0);
	trans[1][23]	= settr(659,0,24,20,20,"BUYRQ_bo.right = 0", 1, 2, 0);
	trans[1][24]	= settr(660,0,25,21,0,"assert(!(((BUYRQ_bo.right==1)&&(BUYRQ_bo.oblig==1))))", 1, 2, 0);
	trans[1][25]	= settr(661,0,30,22,0,"assert(!(((BUYRQ_bo.right==1)&&(BUYRQ_bo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][30] = settr(666,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(666,0,27,0,0,"sub-sequence", 0, 2, 0);
	trans[1][27]	= settr(663,0,28,23,23,"REJ_bo.oblig = 1", 1, 2, 0);
	trans[1][28]	= settr(664,0,29,24,0,"assert(!(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1))))", 1, 2, 0);
	trans[1][29]	= settr(665,0,34,25,0,"assert(!(((REJ_bo.oblig==1)&&(REJ_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][34] = settr(670,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(670,0,31,0,0,"sub-sequence", 0, 2, 0);
	trans[1][31]	= settr(667,0,32,26,26,"CONF_bo.oblig = 1", 1, 2, 0);
	trans[1][32]	= settr(668,0,33,27,0,"assert(!(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1))))", 1, 2, 0);
	trans[1][33]	= settr(669,0,38,28,0,"assert(!(((CONF_bo.oblig==1)&&(CONF_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][38] = settr(674,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(674,0,35,0,0,"sub-sequence", 0, 2, 0);
	trans[1][35]	= settr(671,0,36,29,29,"REJCONFTO_bo.oblig = 1", 1, 2, 0);
	trans[1][36]	= settr(672,0,37,30,0,"assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1))))", 1, 2, 0);
	trans[1][37]	= settr(673,0,39,31,0,"assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1))))", 1, 2, 0);
	trans[1][39]	= settr(675,0,41,32,32,"BUYERexTrace = (BUYERexTrace|(1<<BUYRQ_bo.id))", 1, 2, 0);
	T = trans[ 1][41] = settr(677,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(677,0,40,0,0,"sub-sequence", 0, 2, 0);
	trans[1][40]	= settr(676,0,830,33,33,"CRM2BEG!8,4", 1, 4, 0);
	trans[1][90]	= settr(726,0,830,1,0,".(goto)", 0, 2, 0);
	trans[1][43]	= settr(679,0,85,34,0,"((((BUYRQ_bo.right==1)&&((BUYRQ_bo.role_pl==BUYER)==1))&&((BUYRQ_bo.status==BF)==1)))", 1, 2, 0);
	T = trans[ 1][85] = settr(721,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(721,0,52,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][52] = settr(688,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(688,2,44,0,0,"ATOMIC", 0, 2, 0);
	trans[1][44]	= settr(680,4,83,35,35,"printf('\\n\\n')", 0, 2, 0); /* m: 45 -> 0,83 */
	reached1[45] = 1;
	trans[1][45]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][46]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][47]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][48]	= settr(0,0,0,0,0,"printf('<type>BUYREQ</type>\\n')",0,0,0);
	trans[1][49]	= settr(0,0,0,0,0,"printf('<status>bizfail</status>\\n')",0,0,0);
	trans[1][50]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][51]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][83] = settr(719,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(719,0,53,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(719,0,59,0,0,"IF", 0, 2, 0);
	trans[1][53]	= settr(689,0,54,36,0,"((BuyRqFailBefore==0))", 1, 2, 0);
	trans[1][54]	= settr(690,0,55,37,37,"BuyRqFailBefore = 1", 1, 2, 0);
	trans[1][55]	= settr(691,0,56,38,0,"printf('First BUYREQ-BusinessFailure')", 0, 2, 0);
	trans[1][56]	= settr(692,0,58,39,39,"BUYERexTrace = (BUYERexTrace|(1<<BUYRQ_bo.id))", 1, 2, 0);
	T = trans[ 1][58] = settr(694,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(694,0,57,0,0,"sub-sequence", 0, 2, 0);
	trans[1][57]	= settr(693,0,830,40,40,"CRM2BEG!8,4", 1, 4, 0);
	trans[1][84]	= settr(720,0,830,1,0,".(goto)", 0, 2, 0);
	trans[1][59]	= settr(695,0,60,41,0,"((BuyRqFailBefore==1))", 1, 2, 0);
	trans[1][60]	= settr(696,0,64,42,0,"printf('Last BUYREQ-BusinessFailure')", 0, 2, 0);
	T = trans[ 1][64] = settr(700,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(700,0,61,0,0,"sub-sequence", 0, 2, 0);
	trans[1][61]	= settr(697,0,62,43,43,"BUYRQ_bo.right = 0", 1, 2, 0);
	trans[1][62]	= settr(698,0,63,44,0,"assert(!(((BUYRQ_bo.right==1)&&(BUYRQ_bo.oblig==1))))", 1, 2, 0);
	trans[1][63]	= settr(699,0,66,45,0,"assert(!(((BUYRQ_bo.right==1)&&(BUYRQ_bo.prohib==1))))", 1, 2, 0);
	T = trans[ 1][66] = settr(702,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(702,0,65,0,0,"sub-sequence", 0, 2, 0);
	trans[1][65]	= settr(701,0,67,46,46,"cntttr = 0", 1, 2, 0);
	trans[1][67]	= settr(703,0,69,47,47,"BUYERexTrace = 0", 1, 2, 0);
	T = trans[ 1][69] = settr(705,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(705,0,68,0,0,"sub-sequence", 0, 2, 0);
	trans[1][68]	= settr(704,0,70,48,48,"cntttr = 0", 1, 2, 0);
	trans[1][70]	= settr(706,0,79,49,49,"STOREexTrace = 0", 1, 2, 0);
	T = trans[ 1][79] = settr(715,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(715,2,71,0,0,"ATOMIC", 0, 2, 0);
	trans[1][71]	= settr(707,4,80,50,50,"printf('\\n\\n')", 0, 2, 0); /* m: 72 -> 0,80 */
	reached1[72] = 1;
	trans[1][72]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][73]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][74]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][75]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][76]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][77]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][78]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][80]	= settr(716,0,82,51,51,"BUYERexTrace = (BUYERexTrace|(1<<BUYRQ_bo.id))", 1, 2, 0);
	T = trans[ 1][82] = settr(718,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(718,0,81,0,0,"sub-sequence", 0, 2, 0);
	trans[1][81]	= settr(717,0,830,52,52,"CRM2BEG!8,1", 1, 4, 0);
	trans[1][86]	= settr(722,0,88,2,0,"else", 0, 2, 0);
	T = trans[ 1][88] = settr(724,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(724,0,87,0,0,"sub-sequence", 0, 2, 0);
	trans[1][87]	= settr(723,0,830,53,53,"CRM2BEG!5,4", 1, 4, 0);
	T = trans[ 1][203] = settr(839,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(839,2,102,0,0,"ATOMIC", 1, 2, 0);
	T = trans[ 1][102] = settr(738,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(738,0,100,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][100] = settr(736,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(736,2,92,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(736,2,94,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(736,2,96,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(736,2,98,0,0,"IF", 1, 2, 0);
	trans[1][92]	= settr(728,2,93,54,0,"(BEG2CRM?[17,S])", 1, 2, 0);
	trans[1][93]	= settr(729,2,201,55,55,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][101]	= settr(737,2,201,1,0,".(goto)", 1, 2, 0);
	trans[1][94]	= settr(730,2,95,56,0,"(BEG2CRM?[17,BF])", 1, 2, 0);
	trans[1][95]	= settr(731,2,201,57,57,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][96]	= settr(732,2,97,58,0,"(BEG2CRM?[17,TF])", 1, 2, 0);
	trans[1][97]	= settr(733,2,201,59,59,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][98]	= settr(734,2,99,60,0,"(BEG2CRM?[17,TO])", 1, 2, 0);
	trans[1][99]	= settr(735,2,201,61,61,"BEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][201] = settr(837,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(837,0,199,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][199] = settr(835,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(835,2,103,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(835,2,145,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(835,2,196,0,0,"IF", 1, 2, 0);
	trans[1][103]	= settr(739,2,144,62,0,"((((REJ_bo.oblig==1)&&((REJ_bo.role_pl==STORE)==1))&&((REJ_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][144] = settr(780,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(780,0,112,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 1][112] = settr(748,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(748,0,104,0,0,"sub-sequence", 1, 2, 0);
	trans[1][104]	= settr(740,2,117,63,63,"printf('\\n\\n')", 1, 2, 0); /* m: 105 -> 0,117 */
	reached1[105] = 1;
	trans[1][105]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][106]	= settr(0,0,0,0,0,"printf('<originator>store</originator>\\n')",0,0,0);
	trans[1][107]	= settr(0,0,0,0,0,"printf('<responder>buyer</responder>\\n')",0,0,0);
	trans[1][108]	= settr(0,0,0,0,0,"printf('<type>BUYREJ</type>\\n')",0,0,0);
	trans[1][109]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][110]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][111]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][113]	= settr(0,0,0,0,0,"printf('REJ-Success')",0,0,0);
	T = trans[ 1][117] = settr(753,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(753,0,114,0,0,"sub-sequence", 1, 2, 0);
	trans[1][114]	= settr(750,2,121,64,64,"REJ_bo.oblig = 0", 1, 2, 0); /* m: 115 -> 0,121 */
	reached1[115] = 1;
	trans[1][115]	= settr(0,0,0,0,0,"assert(!(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1))))",0,0,0);
	trans[1][116]	= settr(0,0,0,0,0,"assert(!(((REJ_bo.oblig==1)&&(REJ_bo.right==1))))",0,0,0);
	T = trans[ 1][121] = settr(757,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(757,0,118,0,0,"sub-sequence", 1, 2, 0);
	trans[1][118]	= settr(754,2,125,65,65,"CONF_bo.oblig = 0", 1, 2, 0); /* m: 119 -> 0,125 */
	reached1[119] = 1;
	trans[1][119]	= settr(0,0,0,0,0,"assert(!(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1))))",0,0,0);
	trans[1][120]	= settr(0,0,0,0,0,"assert(!(((CONF_bo.oblig==1)&&(CONF_bo.right==1))))",0,0,0);
	T = trans[ 1][125] = settr(761,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(761,0,122,0,0,"sub-sequence", 1, 2, 0);
	trans[1][122]	= settr(758,2,127,66,66,"REJCONFTO_bo.oblig = 0", 1, 2, 0); /* m: 123 -> 0,127 */
	reached1[123] = 1;
	trans[1][123]	= settr(0,0,0,0,0,"assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1))))",0,0,0);
	trans[1][124]	= settr(0,0,0,0,0,"assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1))))",0,0,0);
	T = trans[ 1][127] = settr(763,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(763,0,126,0,0,"sub-sequence", 1, 2, 0);
	trans[1][126]	= settr(762,2,130,67,67,"cntttr = 0", 1, 2, 0); /* m: 128 -> 0,130 */
	reached1[128] = 1;
	trans[1][128]	= settr(0,0,0,0,0,"BUYERexTrace = 0",0,0,0);
	T = trans[ 1][130] = settr(766,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(766,0,129,0,0,"sub-sequence", 1, 2, 0);
	trans[1][129]	= settr(765,2,140,68,68,"cntttr = 0", 1, 2, 0); /* m: 131 -> 0,140 */
	reached1[131] = 1;
	trans[1][131]	= settr(0,0,0,0,0,"STOREexTrace = 0",0,0,0);
	T = trans[ 1][140] = settr(776,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(776,0,132,0,0,"sub-sequence", 1, 2, 0);
	trans[1][132]	= settr(768,2,143,69,69,"printf('\\n\\n')", 1, 2, 0); /* m: 133 -> 0,143 */
	reached1[133] = 1;
	trans[1][133]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][134]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][135]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][136]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][137]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][138]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][139]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][141]	= settr(0,0,0,0,0,"STOREexTrace = (STOREexTrace|(1<<REJ_bo.id))",0,0,0);
	T = trans[ 1][143] = settr(779,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(779,0,142,0,0,"sub-sequence", 1, 2, 0);
	trans[1][142]	= settr(778,2,200,70,70,"CRM2BEG!7,1", 1, 4, 0);
	trans[1][200]	= settr(836,0,830,71,71,".(goto)", 1, 2, 0); /* m: 202 -> 0,830 */
	reached1[202] = 1;
	trans[1][145]	= settr(781,2,195,72,0,"((((REJ_bo.oblig==1)&&((REJ_bo.role_pl==STORE)==1))&&((REJ_bo.status==BF)==1)))", 1, 2, 0);
	T = trans[ 1][195] = settr(831,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(831,0,154,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 1][154] = settr(790,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(790,0,146,0,0,"sub-sequence", 1, 2, 0);
	trans[1][146]	= settr(782,6,193,73,73,"printf('\\n\\n')", 1, 2, 0); /* m: 147 -> 0,193 */
	reached1[147] = 1;
	trans[1][147]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][148]	= settr(0,0,0,0,0,"printf('<originator>store</originator>\\n')",0,0,0);
	trans[1][149]	= settr(0,0,0,0,0,"printf('<responder>buyer</responder>\\n')",0,0,0);
	trans[1][150]	= settr(0,0,0,0,0,"printf('<type>BUYREJ</type>\\n')",0,0,0);
	trans[1][151]	= settr(0,0,0,0,0,"printf('<status>bizfail</status>\\n')",0,0,0);
	trans[1][152]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][153]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][193] = settr(829,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(829,2,155,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(829,2,161,0,0,"IF", 1, 2, 0);
	trans[1][155]	= settr(791,2,160,74,74,"((RejFailBefore==0))", 1, 2, 0); /* m: 156 -> 160,0 */
	reached1[156] = 1;
	trans[1][156]	= settr(0,0,0,0,0,"RejFailBefore = 1",0,0,0);
	trans[1][157]	= settr(0,0,0,0,0,"printf('First Rej-BusinessFailure')",0,0,0);
	trans[1][158]	= settr(0,0,0,0,0,"STOREexTrace = (STOREexTrace|(1<<REJ_bo.id))",0,0,0);
	T = trans[ 1][160] = settr(796,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(796,0,159,0,0,"sub-sequence", 1, 2, 0);
	trans[1][159]	= settr(795,2,200,75,75,"CRM2BEG!7,4", 1, 4, 0);
	trans[1][194]	= settr(830,2,200,1,0,".(goto)", 1, 2, 0); /* m: 200 -> 0,830 */
	reached1[200] = 1;
	trans[1][161]	= settr(797,2,166,76,76,"((RejFailBefore==1))", 1, 2, 0); /* m: 162 -> 166,0 */
	reached1[162] = 1;
	trans[1][162]	= settr(0,0,0,0,0,"printf('Last BUYREJ-BusinessFailure')",0,0,0);
	T = trans[ 1][166] = settr(802,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(802,0,163,0,0,"sub-sequence", 1, 2, 0);
	trans[1][163]	= settr(799,2,170,77,77,"REJ_bo.oblig = 0", 1, 2, 0); /* m: 164 -> 0,170 */
	reached1[164] = 1;
	trans[1][164]	= settr(0,0,0,0,0,"assert(!(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1))))",0,0,0);
	trans[1][165]	= settr(0,0,0,0,0,"assert(!(((REJ_bo.oblig==1)&&(REJ_bo.right==1))))",0,0,0);
	T = trans[ 1][170] = settr(806,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(806,0,167,0,0,"sub-sequence", 1, 2, 0);
	trans[1][167]	= settr(803,2,174,78,78,"CONF_bo.oblig = 0", 1, 2, 0); /* m: 168 -> 0,174 */
	reached1[168] = 1;
	trans[1][168]	= settr(0,0,0,0,0,"assert(!(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1))))",0,0,0);
	trans[1][169]	= settr(0,0,0,0,0,"assert(!(((CONF_bo.oblig==1)&&(CONF_bo.right==1))))",0,0,0);
	T = trans[ 1][174] = settr(810,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(810,0,171,0,0,"sub-sequence", 1, 2, 0);
	trans[1][171]	= settr(807,2,176,79,79,"REJCONFTO_bo.oblig = 0", 1, 2, 0); /* m: 172 -> 0,176 */
	reached1[172] = 1;
	trans[1][172]	= settr(0,0,0,0,0,"assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1))))",0,0,0);
	trans[1][173]	= settr(0,0,0,0,0,"assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1))))",0,0,0);
	T = trans[ 1][176] = settr(812,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(812,0,175,0,0,"sub-sequence", 1, 2, 0);
	trans[1][175]	= settr(811,2,179,80,80,"cntttr = 0", 1, 2, 0); /* m: 177 -> 0,179 */
	reached1[177] = 1;
	trans[1][177]	= settr(0,0,0,0,0,"BUYERexTrace = 0",0,0,0);
	T = trans[ 1][179] = settr(815,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(815,0,178,0,0,"sub-sequence", 1, 2, 0);
	trans[1][178]	= settr(814,2,189,81,81,"cntttr = 0", 1, 2, 0); /* m: 180 -> 0,189 */
	reached1[180] = 1;
	trans[1][180]	= settr(0,0,0,0,0,"STOREexTrace = 0",0,0,0);
	T = trans[ 1][189] = settr(825,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(825,0,181,0,0,"sub-sequence", 1, 2, 0);
	trans[1][181]	= settr(817,2,192,82,82,"printf('\\n\\n')", 1, 2, 0); /* m: 182 -> 0,192 */
	reached1[182] = 1;
	trans[1][182]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][183]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][184]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][185]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][186]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][187]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][188]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][190]	= settr(0,0,0,0,0,"STOREexTrace = (STOREexTrace|(1<<REJ_bo.id))",0,0,0);
	T = trans[ 1][192] = settr(828,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(828,0,191,0,0,"sub-sequence", 1, 2, 0);
	trans[1][191]	= settr(827,2,200,83,83,"CRM2BEG!7,1", 1, 4, 0);
	trans[1][196]	= settr(832,2,198,2,0,"else", 1, 2, 0);
	T = trans[ 1][198] = settr(834,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(834,0,197,0,0,"sub-sequence", 1, 2, 0);
	trans[1][197]	= settr(833,2,200,84,84,"CRM2BEG!5,4", 1, 4, 0);
	trans[1][202]	= settr(0,0,0,0,0,"buyrj = 1",0,0,0);
	T = trans[ 1][214] = settr(850,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(850,0,212,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][212] = settr(848,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,204,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,206,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(848,0,208,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(848,0,210,0,0,"IF", 0, 2, 0);
	trans[1][204]	= settr(840,0,205,85,0,"(BEG2CRM?[18,S])", 1, 2, 0);
	trans[1][205]	= settr(841,0,310,86,86,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][213]	= settr(849,0,310,1,0,".(goto)", 0, 2, 0);
	trans[1][206]	= settr(842,0,207,87,0,"(BEG2CRM?[18,BF])", 1, 2, 0);
	trans[1][207]	= settr(843,0,310,88,88,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][208]	= settr(844,0,209,89,0,"(BEG2CRM?[18,TF])", 1, 2, 0);
	trans[1][209]	= settr(845,0,310,90,90,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][210]	= settr(846,0,211,91,0,"(BEG2CRM?[18,TO])", 1, 2, 0);
	trans[1][211]	= settr(847,0,310,92,92,"BEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][310] = settr(946,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(946,0,308,0,0,"sub-sequence", 0, 2, 0);
	T = trans[1][308] = settr(944,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(944,0,215,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(944,0,254,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(944,0,305,0,0,"IF", 0, 2, 0);
	trans[1][215]	= settr(851,0,253,93,0,"((((CONF_bo.oblig==1)&&((CONF_bo.role_pl==STORE)==1))&&((CONF_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][253] = settr(889,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(889,0,224,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][224] = settr(860,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(860,2,216,0,0,"ATOMIC", 0, 2, 0);
	trans[1][216]	= settr(852,0,229,94,94,"printf('\\n\\n')", 0, 2, 0); /* m: 217 -> 0,229 */
	reached1[217] = 1;
	trans[1][217]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][218]	= settr(0,0,0,0,0,"printf('<originator>store</originator>\\n')",0,0,0);
	trans[1][219]	= settr(0,0,0,0,0,"printf('<responder>buyer</responder>\\n')",0,0,0);
	trans[1][220]	= settr(0,0,0,0,0,"printf('<type>BUYCONF</type>\\n')",0,0,0);
	trans[1][221]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][222]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][223]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][225]	= settr(0,0,0,0,0,"printf('CONF-Success')",0,0,0);
	T = trans[ 1][229] = settr(865,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(865,0,226,0,0,"sub-sequence", 0, 2, 0);
	trans[1][226]	= settr(862,0,227,95,95,"REJ_bo.oblig = 0", 1, 2, 0);
	trans[1][227]	= settr(863,0,228,96,0,"assert(!(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1))))", 1, 2, 0);
	trans[1][228]	= settr(864,0,233,97,0,"assert(!(((REJ_bo.oblig==1)&&(REJ_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][233] = settr(869,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(869,0,230,0,0,"sub-sequence", 0, 2, 0);
	trans[1][230]	= settr(866,0,231,98,98,"CONF_bo.oblig = 0", 1, 2, 0);
	trans[1][231]	= settr(867,0,232,99,0,"assert(!(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1))))", 1, 2, 0);
	trans[1][232]	= settr(868,0,237,100,0,"assert(!(((CONF_bo.oblig==1)&&(CONF_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][237] = settr(873,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(873,0,234,0,0,"sub-sequence", 0, 2, 0);
	trans[1][234]	= settr(870,0,235,101,101,"REJCONFTO_bo.oblig = 0", 1, 2, 0);
	trans[1][235]	= settr(871,0,236,102,0,"assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1))))", 1, 2, 0);
	trans[1][236]	= settr(872,0,241,103,0,"assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][241] = settr(877,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(877,0,238,0,0,"sub-sequence", 0, 2, 0);
	trans[1][238]	= settr(874,0,239,104,104,"PAY_bo.oblig = 1", 1, 2, 0);
	trans[1][239]	= settr(875,0,240,105,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))", 1, 2, 0);
	trans[1][240]	= settr(876,0,245,106,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][245] = settr(881,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(881,0,242,0,0,"sub-sequence", 0, 2, 0);
	trans[1][242]	= settr(878,0,243,107,107,"CANC_bo.oblig = 1", 1, 2, 0);
	trans[1][243]	= settr(879,0,244,108,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))", 1, 2, 0);
	trans[1][244]	= settr(880,0,249,109,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][249] = settr(885,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(885,0,246,0,0,"sub-sequence", 0, 2, 0);
	trans[1][246]	= settr(882,0,247,110,110,"PAYCANCTO_bo.oblig = 1", 1, 2, 0);
	trans[1][247]	= settr(883,0,248,111,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))", 1, 2, 0);
	trans[1][248]	= settr(884,0,250,112,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))", 1, 2, 0);
	trans[1][250]	= settr(886,0,252,113,113,"STOREexTrace = (STOREexTrace|(1<<CONF_bo.id))", 1, 2, 0);
	T = trans[ 1][252] = settr(888,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(888,0,251,0,0,"sub-sequence", 0, 2, 0);
	trans[1][251]	= settr(887,0,830,114,114,"CRM2BEG!7,4", 1, 4, 0);
	trans[1][309]	= settr(945,0,830,1,0,".(goto)", 0, 2, 0);
	trans[1][254]	= settr(890,0,304,115,0,"((((CONF_bo.oblig==1)&&((CONF_bo.role_pl==STORE)==1))&&((CONF_bo.status==BF)==1)))", 1, 2, 0);
	T = trans[ 1][304] = settr(940,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(940,0,263,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 1][263] = settr(899,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(899,2,255,0,0,"ATOMIC", 0, 2, 0);
	trans[1][255]	= settr(891,4,302,116,116,"printf('\\n\\n')", 0, 2, 0); /* m: 256 -> 0,302 */
	reached1[256] = 1;
	trans[1][256]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][257]	= settr(0,0,0,0,0,"printf('<originator>store</originator>\\n')",0,0,0);
	trans[1][258]	= settr(0,0,0,0,0,"printf('<responder>buyer</responder>\\n')",0,0,0);
	trans[1][259]	= settr(0,0,0,0,0,"printf('<type>BUYCONF</type>\\n')",0,0,0);
	trans[1][260]	= settr(0,0,0,0,0,"printf('<status>bizfail</status>\\n')",0,0,0);
	trans[1][261]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][262]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][302] = settr(938,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(938,0,264,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(938,0,270,0,0,"IF", 0, 2, 0);
	trans[1][264]	= settr(900,0,265,117,0,"((ConfFailBefore==0))", 1, 2, 0);
	trans[1][265]	= settr(901,0,266,118,118,"ConfFailBefore = 1", 1, 2, 0);
	trans[1][266]	= settr(902,0,267,119,0,"printf('First BuyConf-BusinessFailure')", 0, 2, 0);
	trans[1][267]	= settr(903,0,269,120,120,"STOREexTrace = (STOREexTrace|(1<<CONF_bo.id))", 1, 2, 0);
	T = trans[ 1][269] = settr(905,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(905,0,268,0,0,"sub-sequence", 0, 2, 0);
	trans[1][268]	= settr(904,0,830,121,121,"CRM2BEG!7,4", 1, 4, 0);
	trans[1][303]	= settr(939,0,830,1,0,".(goto)", 0, 2, 0);
	trans[1][270]	= settr(906,0,271,122,0,"((ConfFailBefore==1))", 1, 2, 0);
	trans[1][271]	= settr(907,0,275,123,0,"printf('Last CONF-BusinessFailure')", 0, 2, 0);
	T = trans[ 1][275] = settr(911,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(911,0,272,0,0,"sub-sequence", 0, 2, 0);
	trans[1][272]	= settr(908,0,273,124,124,"REJ_bo.oblig = 0", 1, 2, 0);
	trans[1][273]	= settr(909,0,274,125,0,"assert(!(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1))))", 1, 2, 0);
	trans[1][274]	= settr(910,0,279,126,0,"assert(!(((REJ_bo.oblig==1)&&(REJ_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][279] = settr(915,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(915,0,276,0,0,"sub-sequence", 0, 2, 0);
	trans[1][276]	= settr(912,0,277,127,127,"CONF_bo.oblig = 0", 1, 2, 0);
	trans[1][277]	= settr(913,0,278,128,0,"assert(!(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1))))", 1, 2, 0);
	trans[1][278]	= settr(914,0,283,129,0,"assert(!(((CONF_bo.oblig==1)&&(CONF_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][283] = settr(919,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(919,0,280,0,0,"sub-sequence", 0, 2, 0);
	trans[1][280]	= settr(916,0,281,130,130,"REJCONFTO_bo.oblig = 0", 1, 2, 0);
	trans[1][281]	= settr(917,0,282,131,0,"assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1))))", 1, 2, 0);
	trans[1][282]	= settr(918,0,285,132,0,"assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1))))", 1, 2, 0);
	T = trans[ 1][285] = settr(921,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(921,0,284,0,0,"sub-sequence", 0, 2, 0);
	trans[1][284]	= settr(920,0,286,133,133,"cntttr = 0", 1, 2, 0);
	trans[1][286]	= settr(922,0,288,134,134,"BUYERexTrace = 0", 1, 2, 0);
	T = trans[ 1][288] = settr(924,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(924,0,287,0,0,"sub-sequence", 0, 2, 0);
	trans[1][287]	= settr(923,0,289,135,135,"cntttr = 0", 1, 2, 0);
	trans[1][289]	= settr(925,0,298,136,136,"STOREexTrace = 0", 1, 2, 0);
	T = trans[ 1][298] = settr(934,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(934,2,290,0,0,"ATOMIC", 0, 2, 0);
	trans[1][290]	= settr(926,4,299,137,137,"printf('\\n\\n')", 0, 2, 0); /* m: 291 -> 0,299 */
	reached1[291] = 1;
	trans[1][291]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][292]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][293]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][294]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][295]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][296]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][297]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][299]	= settr(935,0,301,138,138,"STOREexTrace = (STOREexTrace|(1<<CONF_bo.id))", 1, 2, 0);
	T = trans[ 1][301] = settr(937,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(937,0,300,0,0,"sub-sequence", 0, 2, 0);
	trans[1][300]	= settr(936,0,830,139,139,"CRM2BEG!7,1", 1, 4, 0);
	trans[1][305]	= settr(941,0,307,2,0,"else", 0, 2, 0);
	T = trans[ 1][307] = settr(943,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(943,0,306,0,0,"sub-sequence", 0, 2, 0);
	trans[1][306]	= settr(942,0,830,140,140,"CRM2BEG!5,4", 1, 4, 0);
	T = trans[ 1][433] = settr(1069,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1069,2,321,0,0,"ATOMIC", 1, 2, 0);
	T = trans[ 1][321] = settr(957,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(957,0,319,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][319] = settr(955,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(955,2,311,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(955,2,313,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(955,2,315,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(955,2,317,0,0,"IF", 1, 2, 0);
	trans[1][311]	= settr(947,2,312,141,0,"(BEG2CRM?[19,S])", 1, 2, 0);
	trans[1][312]	= settr(948,2,431,142,142,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][320]	= settr(956,2,431,1,0,".(goto)", 1, 2, 0);
	trans[1][313]	= settr(949,2,314,143,0,"(BEG2CRM?[19,BF])", 1, 2, 0);
	trans[1][314]	= settr(950,2,431,144,144,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][315]	= settr(951,2,316,145,0,"(BEG2CRM?[19,TF])", 1, 2, 0);
	trans[1][316]	= settr(952,2,431,146,146,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][317]	= settr(953,2,318,147,0,"(BEG2CRM?[19,TO])", 1, 2, 0);
	trans[1][318]	= settr(954,2,431,148,148,"BEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][431] = settr(1067,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1067,0,429,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][429] = settr(1065,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1065,2,322,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1065,2,375,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1065,2,426,0,0,"IF", 1, 2, 0);
	trans[1][322]	= settr(958,2,374,149,0,"((((PAY_bo.oblig==1)&&((PAY_bo.role_pl==BUYER)==1))&&((PAY_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][374] = settr(1010,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1010,0,331,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 1][331] = settr(967,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(967,0,323,0,0,"sub-sequence", 1, 2, 0);
	trans[1][323]	= settr(959,6,372,150,150,"printf('\\n\\n')", 1, 2, 0); /* m: 324 -> 0,372 */
	reached1[324] = 1;
	trans[1][324]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][325]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][326]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][327]	= settr(0,0,0,0,0,"printf('<type>BUYPAY</type>\\n')",0,0,0);
	trans[1][328]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][329]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][330]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][372] = settr(1008,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1008,2,335,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1008,2,355,0,0,"IF", 1, 2, 0);
	T = trans[ 1][335] = settr(971,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(971,0,332,0,0,"sub-sequence", 1, 2, 0);
	trans[1][332]	= settr(968,2,339,151,151,"PAY_bo.oblig = 0", 1, 2, 0); /* m: 333 -> 0,339 */
	reached1[333] = 1;
	trans[1][333]	= settr(0,0,0,0,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))",0,0,0);
	trans[1][334]	= settr(0,0,0,0,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))",0,0,0);
	T = trans[ 1][339] = settr(975,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(975,0,336,0,0,"sub-sequence", 1, 2, 0);
	trans[1][336]	= settr(972,2,343,152,152,"CANC_bo.oblig = 0", 1, 2, 0); /* m: 337 -> 0,343 */
	reached1[337] = 1;
	trans[1][337]	= settr(0,0,0,0,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))",0,0,0);
	trans[1][338]	= settr(0,0,0,0,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))",0,0,0);
	T = trans[ 1][343] = settr(979,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(979,0,340,0,0,"sub-sequence", 1, 2, 0);
	trans[1][340]	= settr(976,2,347,153,153,"PAYCANCTO_bo.oblig = 0", 1, 2, 0); /* m: 341 -> 0,347 */
	reached1[341] = 1;
	trans[1][341]	= settr(0,0,0,0,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))",0,0,0);
	trans[1][342]	= settr(0,0,0,0,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))",0,0,0);
	T = trans[ 1][347] = settr(983,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(983,0,344,0,0,"sub-sequence", 1, 2, 0);
	trans[1][344]	= settr(980,2,351,154,154,"GETVOU_bo.right = 1", 1, 2, 0); /* m: 345 -> 0,351 */
	reached1[345] = 1;
	trans[1][345]	= settr(0,0,0,0,0,"assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1))))",0,0,0);
	trans[1][346]	= settr(0,0,0,0,0,"assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1))))",0,0,0);
	trans[1][348]	= settr(0,0,0,0,0,"payNotification = 0",0,0,0);
	trans[1][349]	= settr(0,0,0,0,0,"BUYERexTrace = (BUYERexTrace|(1<<PAY_bo.id))",0,0,0);
	T = trans[ 1][351] = settr(987,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(987,0,350,0,0,"sub-sequence", 1, 2, 0);
	trans[1][350]	= settr(986,2,430,155,155,"CRM2BEG!7,4", 1, 4, 0);
	trans[1][373]	= settr(1009,2,430,1,0,".(goto)", 1, 2, 0); /* m: 430 -> 0,830 */
	reached1[430] = 1;
	T = trans[ 1][355] = settr(991,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(991,0,352,0,0,"sub-sequence", 1, 2, 0);
	trans[1][352]	= settr(988,2,359,156,156,"PAY_bo.oblig = 0", 1, 2, 0); /* m: 353 -> 0,359 */
	reached1[353] = 1;
	trans[1][353]	= settr(0,0,0,0,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))",0,0,0);
	trans[1][354]	= settr(0,0,0,0,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))",0,0,0);
	T = trans[ 1][359] = settr(995,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(995,0,356,0,0,"sub-sequence", 1, 2, 0);
	trans[1][356]	= settr(992,2,363,157,157,"CANC_bo.oblig = 0", 1, 2, 0); /* m: 357 -> 0,363 */
	reached1[357] = 1;
	trans[1][357]	= settr(0,0,0,0,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))",0,0,0);
	trans[1][358]	= settr(0,0,0,0,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))",0,0,0);
	T = trans[ 1][363] = settr(999,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(999,0,360,0,0,"sub-sequence", 1, 2, 0);
	trans[1][360]	= settr(996,2,367,158,158,"PAYCANCTO_bo.oblig = 0", 1, 2, 0); /* m: 361 -> 0,367 */
	reached1[361] = 1;
	trans[1][361]	= settr(0,0,0,0,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))",0,0,0);
	trans[1][362]	= settr(0,0,0,0,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))",0,0,0);
	T = trans[ 1][367] = settr(1003,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1003,0,364,0,0,"sub-sequence", 1, 2, 0);
	trans[1][364]	= settr(1000,2,371,159,159,"GETVOU_bo.right = 1", 1, 2, 0); /* m: 365 -> 0,371 */
	reached1[365] = 1;
	trans[1][365]	= settr(0,0,0,0,0,"assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1))))",0,0,0);
	trans[1][366]	= settr(0,0,0,0,0,"assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1))))",0,0,0);
	trans[1][368]	= settr(0,0,0,0,0,"payNotification = 1",0,0,0);
	trans[1][369]	= settr(0,0,0,0,0,"BUYERexTrace = (BUYERexTrace|(1<<PAY_bo.id))",0,0,0);
	T = trans[ 1][371] = settr(1007,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1007,0,370,0,0,"sub-sequence", 1, 2, 0);
	trans[1][370]	= settr(1006,2,430,160,160,"CRM2BEG!7,4", 1, 4, 0);
	trans[1][430]	= settr(1066,0,830,161,161,".(goto)", 1, 2, 0); /* m: 432 -> 0,830 */
	reached1[432] = 1;
	trans[1][375]	= settr(1011,2,425,162,0,"((((PAY_bo.oblig==1)&&((PAY_bo.role_pl==BUYER)==1))&&((PAY_bo.status==BF)==1)))", 1, 2, 0);
	T = trans[ 1][425] = settr(1061,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1061,0,384,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 1][384] = settr(1020,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1020,0,376,0,0,"sub-sequence", 1, 2, 0);
	trans[1][376]	= settr(1012,6,423,163,163,"printf('\\n\\n')", 1, 2, 0); /* m: 377 -> 0,423 */
	reached1[377] = 1;
	trans[1][377]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][378]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][379]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][380]	= settr(0,0,0,0,0,"printf('<type>BUYPAY</type>\\n')",0,0,0);
	trans[1][381]	= settr(0,0,0,0,0,"printf('<status>bizfail</status>\\n')",0,0,0);
	trans[1][382]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][383]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][423] = settr(1059,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1059,2,385,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1059,2,391,0,0,"IF", 1, 2, 0);
	trans[1][385]	= settr(1021,2,390,164,164,"((PayFailBefore==0))", 1, 2, 0); /* m: 386 -> 390,0 */
	reached1[386] = 1;
	trans[1][386]	= settr(0,0,0,0,0,"PayFailBefore = 1",0,0,0);
	trans[1][387]	= settr(0,0,0,0,0,"printf('First BUYPAY-BusinessFailure')",0,0,0);
	trans[1][388]	= settr(0,0,0,0,0,"BUYERexTrace = (BUYERexTrace|(1<<PAY_bo.id))",0,0,0);
	T = trans[ 1][390] = settr(1026,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1026,0,389,0,0,"sub-sequence", 1, 2, 0);
	trans[1][389]	= settr(1025,2,430,165,165,"CRM2BEG!7,4", 1, 4, 0);
	trans[1][424]	= settr(1060,2,430,1,0,".(goto)", 1, 2, 0); /* m: 430 -> 0,830 */
	reached1[430] = 1;
	trans[1][391]	= settr(1027,2,396,166,166,"((PayFailBefore==1))", 1, 2, 0); /* m: 392 -> 396,0 */
	reached1[392] = 1;
	trans[1][392]	= settr(0,0,0,0,0,"printf('Last BUYPAY-BusinessFailure')",0,0,0);
	T = trans[ 1][396] = settr(1032,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1032,0,393,0,0,"sub-sequence", 1, 2, 0);
	trans[1][393]	= settr(1029,2,400,167,167,"PAY_bo.oblig = 0", 1, 2, 0); /* m: 394 -> 0,400 */
	reached1[394] = 1;
	trans[1][394]	= settr(0,0,0,0,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))",0,0,0);
	trans[1][395]	= settr(0,0,0,0,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))",0,0,0);
	T = trans[ 1][400] = settr(1036,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1036,0,397,0,0,"sub-sequence", 1, 2, 0);
	trans[1][397]	= settr(1033,2,404,168,168,"CANC_bo.oblig = 0", 1, 2, 0); /* m: 398 -> 0,404 */
	reached1[398] = 1;
	trans[1][398]	= settr(0,0,0,0,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))",0,0,0);
	trans[1][399]	= settr(0,0,0,0,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))",0,0,0);
	T = trans[ 1][404] = settr(1040,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1040,0,401,0,0,"sub-sequence", 1, 2, 0);
	trans[1][401]	= settr(1037,2,406,169,169,"PAYCANCTO_bo.oblig = 0", 1, 2, 0); /* m: 402 -> 0,406 */
	reached1[402] = 1;
	trans[1][402]	= settr(0,0,0,0,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))",0,0,0);
	trans[1][403]	= settr(0,0,0,0,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))",0,0,0);
	T = trans[ 1][406] = settr(1042,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1042,0,405,0,0,"sub-sequence", 1, 2, 0);
	trans[1][405]	= settr(1041,2,409,170,170,"cntttr = 0", 1, 2, 0); /* m: 407 -> 0,409 */
	reached1[407] = 1;
	trans[1][407]	= settr(0,0,0,0,0,"BUYERexTrace = 0",0,0,0);
	T = trans[ 1][409] = settr(1045,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1045,0,408,0,0,"sub-sequence", 1, 2, 0);
	trans[1][408]	= settr(1044,2,419,171,171,"cntttr = 0", 1, 2, 0); /* m: 410 -> 0,419 */
	reached1[410] = 1;
	trans[1][410]	= settr(0,0,0,0,0,"STOREexTrace = 0",0,0,0);
	T = trans[ 1][419] = settr(1055,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1055,0,411,0,0,"sub-sequence", 1, 2, 0);
	trans[1][411]	= settr(1047,2,422,172,172,"printf('\\n\\n')", 1, 2, 0); /* m: 412 -> 0,422 */
	reached1[412] = 1;
	trans[1][412]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][413]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][414]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][415]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][416]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][417]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][418]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][420]	= settr(0,0,0,0,0,"BUYERexTrace = (BUYERexTrace|(1<<PAY_bo.id))",0,0,0);
	T = trans[ 1][422] = settr(1058,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1058,0,421,0,0,"sub-sequence", 1, 2, 0);
	trans[1][421]	= settr(1057,2,430,173,173,"CRM2BEG!7,1", 1, 4, 0);
	trans[1][426]	= settr(1062,2,428,2,0,"else", 1, 2, 0);
	T = trans[ 1][428] = settr(1064,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1064,0,427,0,0,"sub-sequence", 1, 2, 0);
	trans[1][427]	= settr(1063,2,430,174,174,"CRM2BEG!5,4", 1, 4, 0);
	trans[1][432]	= settr(0,0,0,0,0,"pay = 1",0,0,0);
	T = trans[ 1][598] = settr(1234,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1234,2,444,0,0,"ATOMIC", 1, 2, 0);
	T = trans[ 1][444] = settr(1080,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1080,0,442,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][442] = settr(1078,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1078,2,434,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1078,2,436,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1078,2,438,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1078,2,440,0,0,"IF", 1, 2, 0);
	trans[1][434]	= settr(1070,2,435,175,0,"(BEG2CRM?[21,S])", 1, 2, 0);
	trans[1][435]	= settr(1071,2,596,176,176,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][443]	= settr(1079,2,596,1,0,".(goto)", 1, 2, 0);
	trans[1][436]	= settr(1072,2,437,177,0,"(BEG2CRM?[21,BF])", 1, 2, 0);
	trans[1][437]	= settr(1073,2,596,178,178,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][438]	= settr(1074,2,439,179,0,"(BEG2CRM?[21,TF])", 1, 2, 0);
	trans[1][439]	= settr(1075,2,596,180,180,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][440]	= settr(1076,2,441,181,0,"(BEG2CRM?[21,TO])", 1, 2, 0);
	trans[1][441]	= settr(1077,2,596,182,182,"BEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][596] = settr(1232,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1232,0,594,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][594] = settr(1230,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1230,2,445,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1230,2,523,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1230,2,566,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1230,2,591,0,0,"IF", 1, 2, 0);
	trans[1][445]	= settr(1081,2,522,183,0,"((((GETVOU_bo.right==1)&&((GETVOU_bo.role_pl==BUYER)==1))&&((GETVOU_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][522] = settr(1158,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1158,0,520,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][520] = settr(1156,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1156,2,446,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1156,2,487,0,0,"IF", 1, 2, 0);
	trans[1][446]	= settr(1082,2,463,184,0,"((payNotification==0))", 1, 2, 0);
	T = trans[ 1][463] = settr(1099,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1099,0,447,0,0,"sub-sequence", 1, 2, 0);
	trans[1][447]	= settr(1083,2,468,185,185,"printf('\\n\\n')", 1, 2, 0); /* m: 448 -> 0,468 */
	reached1[448] = 1;
	trans[1][448]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][449]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][450]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][451]	= settr(0,0,0,0,0,"printf('<type>GETVOU</type>\\n')",0,0,0);
	trans[1][452]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][453]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][454]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][455]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][456]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][457]	= settr(0,0,0,0,0,"printf('<originator>ccc</originator>\\n')",0,0,0);
	trans[1][458]	= settr(0,0,0,0,0,"printf('<responder>nobody</responder>\\n')",0,0,0);
	trans[1][459]	= settr(0,0,0,0,0,"printf('<type>NORIGHTTOGETVOU</type>\\n')",0,0,0);
	trans[1][460]	= settr(0,0,0,0,0,"printf('<status>notification</status>\\n')",0,0,0);
	trans[1][461]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][462]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][464]	= settr(0,0,0,0,0,"printf('GETVOU-Success!!!\\n')",0,0,0);
	T = trans[ 1][468] = settr(1104,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1104,0,465,0,0,"sub-sequence", 1, 2, 0);
	trans[1][465]	= settr(1101,2,470,186,186,"GETVOU_bo.right = 0", 1, 2, 0); /* m: 466 -> 0,470 */
	reached1[466] = 1;
	trans[1][466]	= settr(0,0,0,0,0,"assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1))))",0,0,0);
	trans[1][467]	= settr(0,0,0,0,0,"assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1))))",0,0,0);
	T = trans[ 1][470] = settr(1106,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1106,0,469,0,0,"sub-sequence", 1, 2, 0);
	trans[1][469]	= settr(1105,2,473,187,187,"cntttr = 0", 1, 2, 0); /* m: 471 -> 0,473 */
	reached1[471] = 1;
	trans[1][471]	= settr(0,0,0,0,0,"BUYERexTrace = 0",0,0,0);
	T = trans[ 1][473] = settr(1109,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1109,0,472,0,0,"sub-sequence", 1, 2, 0);
	trans[1][472]	= settr(1108,2,483,188,188,"cntttr = 0", 1, 2, 0); /* m: 474 -> 0,483 */
	reached1[474] = 1;
	trans[1][474]	= settr(0,0,0,0,0,"STOREexTrace = 0",0,0,0);
	T = trans[ 1][483] = settr(1119,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1119,0,475,0,0,"sub-sequence", 1, 2, 0);
	trans[1][475]	= settr(1111,2,486,189,189,"printf('\\n\\n')", 1, 2, 0); /* m: 476 -> 0,486 */
	reached1[476] = 1;
	trans[1][476]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][477]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][478]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][479]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][480]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][481]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][482]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][484]	= settr(0,0,0,0,0,"BUYERexTrace = (BUYERexTrace|(1<<GETVOU_bo.id))",0,0,0);
	T = trans[ 1][486] = settr(1122,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1122,0,485,0,0,"sub-sequence", 1, 2, 0);
	trans[1][485]	= settr(1121,2,595,190,190,"CRM2BEG!5,1", 1, 4, 0);
	trans[1][521]	= settr(1157,2,595,1,0,".(goto)", 1, 2, 0); /* m: 595 -> 0,830 */
	reached1[595] = 1;
	trans[1][487]	= settr(1123,2,496,191,0,"((payNotification==1))", 1, 2, 0);
	T = trans[ 1][496] = settr(1132,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1132,0,488,0,0,"sub-sequence", 1, 2, 0);
	trans[1][488]	= settr(1124,2,501,192,192,"printf('\\n\\n')", 1, 2, 0); /* m: 489 -> 0,501 */
	reached1[489] = 1;
	trans[1][489]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][490]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][491]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][492]	= settr(0,0,0,0,0,"printf('<type>GETVOU</type>\\n')",0,0,0);
	trans[1][493]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][494]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][495]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][497]	= settr(0,0,0,0,0,"printf('GETVOU-Success!!!\\n')",0,0,0);
	T = trans[ 1][501] = settr(1137,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1137,0,498,0,0,"sub-sequence", 1, 2, 0);
	trans[1][498]	= settr(1134,2,503,193,193,"GETVOU_bo.right = 0", 1, 2, 0); /* m: 499 -> 0,503 */
	reached1[499] = 1;
	trans[1][499]	= settr(0,0,0,0,0,"assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1))))",0,0,0);
	trans[1][500]	= settr(0,0,0,0,0,"assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1))))",0,0,0);
	T = trans[ 1][503] = settr(1139,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1139,0,502,0,0,"sub-sequence", 1, 2, 0);
	trans[1][502]	= settr(1138,2,506,194,194,"cntttr = 0", 1, 2, 0); /* m: 504 -> 0,506 */
	reached1[504] = 1;
	trans[1][504]	= settr(0,0,0,0,0,"BUYERexTrace = 0",0,0,0);
	T = trans[ 1][506] = settr(1142,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1142,0,505,0,0,"sub-sequence", 1, 2, 0);
	trans[1][505]	= settr(1141,2,516,195,195,"cntttr = 0", 1, 2, 0); /* m: 507 -> 0,516 */
	reached1[507] = 1;
	trans[1][507]	= settr(0,0,0,0,0,"STOREexTrace = 0",0,0,0);
	T = trans[ 1][516] = settr(1152,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1152,0,508,0,0,"sub-sequence", 1, 2, 0);
	trans[1][508]	= settr(1144,2,519,196,196,"printf('\\n\\n')", 1, 2, 0); /* m: 509 -> 0,519 */
	reached1[509] = 1;
	trans[1][509]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][510]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][511]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][512]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][513]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][514]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][515]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][517]	= settr(0,0,0,0,0,"BUYERexTrace = (BUYERexTrace|(1<<GETVOU_bo.id))",0,0,0);
	T = trans[ 1][519] = settr(1155,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1155,0,518,0,0,"sub-sequence", 1, 2, 0);
	trans[1][518]	= settr(1154,2,595,197,197,"CRM2BEG!8,1", 1, 4, 0);
	trans[1][595]	= settr(1231,0,830,198,198,".(goto)", 1, 2, 0); /* m: 597 -> 0,830 */
	reached1[597] = 1;
	trans[1][523]	= settr(1159,2,565,199,0,"((((GETVOU_bo.right==1)&&((GETVOU_bo.role_pl==BUYER)==1))&&((GETVOU_bo.status==BF)==1)))", 1, 2, 0);
	T = trans[ 1][565] = settr(1201,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1201,0,532,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 1][532] = settr(1168,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1168,0,524,0,0,"sub-sequence", 1, 2, 0);
	trans[1][524]	= settr(1160,6,563,200,200,"printf('\\n\\n')", 1, 2, 0); /* m: 525 -> 0,563 */
	reached1[525] = 1;
	trans[1][525]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][526]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][527]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][528]	= settr(0,0,0,0,0,"printf('<type>GETVOU</type>\\n')",0,0,0);
	trans[1][529]	= settr(0,0,0,0,0,"printf('<status>bizfail</status>\\n')",0,0,0);
	trans[1][530]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][531]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][563] = settr(1199,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1199,2,533,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1199,2,539,0,0,"IF", 1, 2, 0);
	trans[1][533]	= settr(1169,2,538,201,201,"((GetVouFailBefore==0))", 1, 2, 0); /* m: 534 -> 538,0 */
	reached1[534] = 1;
	trans[1][534]	= settr(0,0,0,0,0,"GetVouFailBefore = 1",0,0,0);
	trans[1][535]	= settr(0,0,0,0,0,"printf('First GETVOU-BusinessFailure')",0,0,0);
	trans[1][536]	= settr(0,0,0,0,0,"BUYERexTrace = (BUYERexTrace|(1<<GETVOU_bo.id))",0,0,0);
	T = trans[ 1][538] = settr(1174,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1174,0,537,0,0,"sub-sequence", 1, 2, 0);
	trans[1][537]	= settr(1173,2,595,202,202,"CRM2BEG!8,4", 1, 4, 0);
	trans[1][564]	= settr(1200,2,595,1,0,".(goto)", 1, 2, 0); /* m: 595 -> 0,830 */
	reached1[595] = 1;
	trans[1][539]	= settr(1175,2,544,203,203,"((GetVouFailBefore==1))", 1, 2, 0); /* m: 540 -> 544,0 */
	reached1[540] = 1;
	trans[1][540]	= settr(0,0,0,0,0,"printf('Last GETVOU-BusinessFailure')",0,0,0);
	T = trans[ 1][544] = settr(1180,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1180,0,541,0,0,"sub-sequence", 1, 2, 0);
	trans[1][541]	= settr(1177,2,546,204,204,"GETVOU_bo.right = 0", 1, 2, 0); /* m: 542 -> 0,546 */
	reached1[542] = 1;
	trans[1][542]	= settr(0,0,0,0,0,"assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1))))",0,0,0);
	trans[1][543]	= settr(0,0,0,0,0,"assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1))))",0,0,0);
	T = trans[ 1][546] = settr(1182,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1182,0,545,0,0,"sub-sequence", 1, 2, 0);
	trans[1][545]	= settr(1181,2,549,205,205,"cntttr = 0", 1, 2, 0); /* m: 547 -> 0,549 */
	reached1[547] = 1;
	trans[1][547]	= settr(0,0,0,0,0,"BUYERexTrace = 0",0,0,0);
	T = trans[ 1][549] = settr(1185,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1185,0,548,0,0,"sub-sequence", 1, 2, 0);
	trans[1][548]	= settr(1184,2,559,206,206,"cntttr = 0", 1, 2, 0); /* m: 550 -> 0,559 */
	reached1[550] = 1;
	trans[1][550]	= settr(0,0,0,0,0,"STOREexTrace = 0",0,0,0);
	T = trans[ 1][559] = settr(1195,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1195,0,551,0,0,"sub-sequence", 1, 2, 0);
	trans[1][551]	= settr(1187,2,562,207,207,"printf('\\n\\n')", 1, 2, 0); /* m: 552 -> 0,562 */
	reached1[552] = 1;
	trans[1][552]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][553]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][554]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][555]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][556]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][557]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][558]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][560]	= settr(0,0,0,0,0,"BUYERexTrace = (BUYERexTrace|(1<<GETVOU_bo.id))",0,0,0);
	T = trans[ 1][562] = settr(1198,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1198,0,561,0,0,"sub-sequence", 1, 2, 0);
	trans[1][561]	= settr(1197,2,595,208,208,"CRM2BEG!8,1", 1, 4, 0);
	trans[1][566]	= settr(1202,2,590,209,0,"((((GETVOU_bo.right==1)&&((GETVOU_bo.role_pl==BUYER)==1))&&((GETVOU_bo.status==TO)==1)))", 1, 2, 0);
	T = trans[ 1][590] = settr(1226,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1226,0,567,0,0,"sub-sequence", 1, 2, 0);
	trans[1][567]	= settr(1203,2,571,210,0,"printf('GETVOU time out')", 1, 2, 0);
	T = trans[ 1][571] = settr(1207,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1207,0,568,0,0,"sub-sequence", 1, 2, 0);
	trans[1][568]	= settr(1204,2,573,211,211,"GETVOU_bo.right = 0", 1, 2, 0); /* m: 569 -> 0,573 */
	reached1[569] = 1;
	trans[1][569]	= settr(0,0,0,0,0,"assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.oblig==1))))",0,0,0);
	trans[1][570]	= settr(0,0,0,0,0,"assert(!(((GETVOU_bo.right==1)&&(GETVOU_bo.prohib==1))))",0,0,0);
	T = trans[ 1][573] = settr(1209,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1209,0,572,0,0,"sub-sequence", 1, 2, 0);
	trans[1][572]	= settr(1208,2,576,212,212,"cntttr = 0", 1, 2, 0); /* m: 574 -> 0,576 */
	reached1[574] = 1;
	trans[1][574]	= settr(0,0,0,0,0,"BUYERexTrace = 0",0,0,0);
	T = trans[ 1][576] = settr(1212,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1212,0,575,0,0,"sub-sequence", 1, 2, 0);
	trans[1][575]	= settr(1211,2,586,213,213,"cntttr = 0", 1, 2, 0); /* m: 577 -> 0,586 */
	reached1[577] = 1;
	trans[1][577]	= settr(0,0,0,0,0,"STOREexTrace = 0",0,0,0);
	T = trans[ 1][586] = settr(1222,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1222,0,578,0,0,"sub-sequence", 1, 2, 0);
	trans[1][578]	= settr(1214,2,589,214,214,"printf('\\n\\n')", 1, 2, 0); /* m: 579 -> 0,589 */
	reached1[579] = 1;
	trans[1][579]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][580]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][581]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][582]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][583]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][584]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][585]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][587]	= settr(0,0,0,0,0,"BUYERexTrace = (BUYERexTrace|(1<<GETVOU_bo.id))",0,0,0);
	T = trans[ 1][589] = settr(1225,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1225,0,588,0,0,"sub-sequence", 1, 2, 0);
	trans[1][588]	= settr(1224,2,595,215,215,"CRM2BEG!8,1", 1, 4, 0);
	trans[1][591]	= settr(1227,2,593,2,0,"else", 1, 2, 0);
	T = trans[ 1][593] = settr(1229,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1229,0,592,0,0,"sub-sequence", 1, 2, 0);
	trans[1][592]	= settr(1228,2,595,216,216,"CRM2BEG!5,4", 1, 4, 0);
	trans[1][597]	= settr(0,0,0,0,0,"getvou = 1",0,0,0);
	T = trans[ 1][709] = settr(1345,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1345,2,609,0,0,"ATOMIC", 1, 2, 0);
	T = trans[ 1][609] = settr(1245,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1245,0,607,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][607] = settr(1243,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1243,2,599,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1243,2,601,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1243,2,603,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1243,2,605,0,0,"IF", 1, 2, 0);
	trans[1][599]	= settr(1235,2,600,217,0,"(BEG2CRM?[20,S])", 1, 2, 0);
	trans[1][600]	= settr(1236,2,707,218,218,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][608]	= settr(1244,2,707,1,0,".(goto)", 1, 2, 0);
	trans[1][601]	= settr(1237,2,602,219,0,"(BEG2CRM?[20,BF])", 1, 2, 0);
	trans[1][602]	= settr(1238,2,707,220,220,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][603]	= settr(1239,2,604,221,0,"(BEG2CRM?[20,TF])", 1, 2, 0);
	trans[1][604]	= settr(1240,2,707,222,222,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][605]	= settr(1241,2,606,223,0,"(BEG2CRM?[20,TO])", 1, 2, 0);
	trans[1][606]	= settr(1242,2,707,224,224,"BEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][707] = settr(1343,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1343,0,705,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][705] = settr(1341,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1341,2,610,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1341,2,651,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1341,2,702,0,0,"IF", 1, 2, 0);
	trans[1][610]	= settr(1246,2,650,225,0,"((((CANC_bo.oblig==1)&&((CANC_bo.role_pl==BUYER)==1))&&((CANC_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][650] = settr(1286,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1286,0,619,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 1][619] = settr(1255,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1255,0,611,0,0,"sub-sequence", 1, 2, 0);
	trans[1][611]	= settr(1247,6,623,226,226,"printf('\\n\\n')", 1, 2, 0); /* m: 612 -> 0,623 */
	reached1[612] = 1;
	trans[1][612]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][613]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][614]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][615]	= settr(0,0,0,0,0,"printf('<type>BUYCANC</type>\\n')",0,0,0);
	trans[1][616]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][617]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][618]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][623] = settr(1259,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1259,0,620,0,0,"sub-sequence", 1, 2, 0);
	trans[1][620]	= settr(1256,2,627,227,227,"PAY_bo.oblig = 0", 1, 2, 0); /* m: 621 -> 0,627 */
	reached1[621] = 1;
	trans[1][621]	= settr(0,0,0,0,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))",0,0,0);
	trans[1][622]	= settr(0,0,0,0,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))",0,0,0);
	T = trans[ 1][627] = settr(1263,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1263,0,624,0,0,"sub-sequence", 1, 2, 0);
	trans[1][624]	= settr(1260,2,631,228,228,"CANC_bo.oblig = 0", 1, 2, 0); /* m: 625 -> 0,631 */
	reached1[625] = 1;
	trans[1][625]	= settr(0,0,0,0,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))",0,0,0);
	trans[1][626]	= settr(0,0,0,0,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))",0,0,0);
	T = trans[ 1][631] = settr(1267,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1267,0,628,0,0,"sub-sequence", 1, 2, 0);
	trans[1][628]	= settr(1264,2,633,229,229,"PAYCANCTO_bo.oblig = 0", 1, 2, 0); /* m: 629 -> 0,633 */
	reached1[629] = 1;
	trans[1][629]	= settr(0,0,0,0,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))",0,0,0);
	trans[1][630]	= settr(0,0,0,0,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))",0,0,0);
	T = trans[ 1][633] = settr(1269,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1269,0,632,0,0,"sub-sequence", 1, 2, 0);
	trans[1][632]	= settr(1268,2,636,230,230,"cntttr = 0", 1, 2, 0); /* m: 634 -> 0,636 */
	reached1[634] = 1;
	trans[1][634]	= settr(0,0,0,0,0,"BUYERexTrace = 0",0,0,0);
	T = trans[ 1][636] = settr(1272,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1272,0,635,0,0,"sub-sequence", 1, 2, 0);
	trans[1][635]	= settr(1271,2,646,231,231,"cntttr = 0", 1, 2, 0); /* m: 637 -> 0,646 */
	reached1[637] = 1;
	trans[1][637]	= settr(0,0,0,0,0,"STOREexTrace = 0",0,0,0);
	T = trans[ 1][646] = settr(1282,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1282,0,638,0,0,"sub-sequence", 1, 2, 0);
	trans[1][638]	= settr(1274,2,649,232,232,"printf('\\n\\n')", 1, 2, 0); /* m: 639 -> 0,649 */
	reached1[639] = 1;
	trans[1][639]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][640]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][641]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][642]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][643]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][644]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][645]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][647]	= settr(0,0,0,0,0,"BUYERexTrace = (BUYERexTrace|(1<<CANC_bo.id))",0,0,0);
	T = trans[ 1][649] = settr(1285,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1285,0,648,0,0,"sub-sequence", 1, 2, 0);
	trans[1][648]	= settr(1284,2,706,233,233,"CRM2BEG!7,1", 1, 4, 0);
	trans[1][706]	= settr(1342,0,830,234,234,".(goto)", 1, 2, 0); /* m: 708 -> 0,830 */
	reached1[708] = 1;
	trans[1][651]	= settr(1287,2,701,235,0,"((((CANC_bo.oblig==1)&&((CANC_bo.role_pl==BUYER)==1))&&((CANC_bo.status==BF)==1)))", 1, 2, 0);
	T = trans[ 1][701] = settr(1337,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1337,0,660,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 1][660] = settr(1296,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1296,0,652,0,0,"sub-sequence", 1, 2, 0);
	trans[1][652]	= settr(1288,6,699,236,236,"printf('\\n\\n')", 1, 2, 0); /* m: 653 -> 0,699 */
	reached1[653] = 1;
	trans[1][653]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][654]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][655]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][656]	= settr(0,0,0,0,0,"printf('<type>BUYCANC</type>\\n')",0,0,0);
	trans[1][657]	= settr(0,0,0,0,0,"printf('<status>bizfail</status>\\n')",0,0,0);
	trans[1][658]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][659]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[1][699] = settr(1335,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1335,2,661,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1335,2,667,0,0,"IF", 1, 2, 0);
	trans[1][661]	= settr(1297,2,666,237,237,"((CancFailBefore==0))", 1, 2, 0); /* m: 662 -> 666,0 */
	reached1[662] = 1;
	trans[1][662]	= settr(0,0,0,0,0,"CancFailBefore = 1",0,0,0);
	trans[1][663]	= settr(0,0,0,0,0,"printf('First CANC-BusinessFailure')",0,0,0);
	trans[1][664]	= settr(0,0,0,0,0,"BUYERexTrace = (BUYERexTrace|(1<<CANC_bo.id))",0,0,0);
	T = trans[ 1][666] = settr(1302,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1302,0,665,0,0,"sub-sequence", 1, 2, 0);
	trans[1][665]	= settr(1301,2,706,238,238,"CRM2BEG!7,4", 1, 4, 0);
	trans[1][700]	= settr(1336,2,706,1,0,".(goto)", 1, 2, 0); /* m: 706 -> 0,830 */
	reached1[706] = 1;
	trans[1][667]	= settr(1303,2,672,239,239,"((CancFailBefore==1))", 1, 2, 0); /* m: 668 -> 672,0 */
	reached1[668] = 1;
	trans[1][668]	= settr(0,0,0,0,0,"printf('Last CANC-BusinessFailure')",0,0,0);
	T = trans[ 1][672] = settr(1308,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1308,0,669,0,0,"sub-sequence", 1, 2, 0);
	trans[1][669]	= settr(1305,2,676,240,240,"PAY_bo.oblig = 0", 1, 2, 0); /* m: 670 -> 0,676 */
	reached1[670] = 1;
	trans[1][670]	= settr(0,0,0,0,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))",0,0,0);
	trans[1][671]	= settr(0,0,0,0,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))",0,0,0);
	T = trans[ 1][676] = settr(1312,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1312,0,673,0,0,"sub-sequence", 1, 2, 0);
	trans[1][673]	= settr(1309,2,680,241,241,"CANC_bo.oblig = 0", 1, 2, 0); /* m: 674 -> 0,680 */
	reached1[674] = 1;
	trans[1][674]	= settr(0,0,0,0,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))",0,0,0);
	trans[1][675]	= settr(0,0,0,0,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))",0,0,0);
	T = trans[ 1][680] = settr(1316,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1316,0,677,0,0,"sub-sequence", 1, 2, 0);
	trans[1][677]	= settr(1313,2,682,242,242,"PAYCANCTO_bo.oblig = 0", 1, 2, 0); /* m: 678 -> 0,682 */
	reached1[678] = 1;
	trans[1][678]	= settr(0,0,0,0,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))",0,0,0);
	trans[1][679]	= settr(0,0,0,0,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))",0,0,0);
	T = trans[ 1][682] = settr(1318,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1318,0,681,0,0,"sub-sequence", 1, 2, 0);
	trans[1][681]	= settr(1317,2,685,243,243,"cntttr = 0", 1, 2, 0); /* m: 683 -> 0,685 */
	reached1[683] = 1;
	trans[1][683]	= settr(0,0,0,0,0,"BUYERexTrace = 0",0,0,0);
	T = trans[ 1][685] = settr(1321,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1321,0,684,0,0,"sub-sequence", 1, 2, 0);
	trans[1][684]	= settr(1320,2,695,244,244,"cntttr = 0", 1, 2, 0); /* m: 686 -> 0,695 */
	reached1[686] = 1;
	trans[1][686]	= settr(0,0,0,0,0,"STOREexTrace = 0",0,0,0);
	T = trans[ 1][695] = settr(1331,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1331,0,687,0,0,"sub-sequence", 1, 2, 0);
	trans[1][687]	= settr(1323,2,698,245,245,"printf('\\n\\n')", 1, 2, 0); /* m: 688 -> 0,698 */
	reached1[688] = 1;
	trans[1][688]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][689]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][690]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][691]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][692]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][693]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][694]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][696]	= settr(0,0,0,0,0,"BUYERexTrace = (BUYERexTrace|(1<<CANC_bo.id))",0,0,0);
	T = trans[ 1][698] = settr(1334,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1334,0,697,0,0,"sub-sequence", 1, 2, 0);
	trans[1][697]	= settr(1333,2,706,246,246,"CRM2BEG!7,1", 1, 4, 0);
	trans[1][702]	= settr(1338,2,704,2,0,"else", 1, 2, 0);
	T = trans[ 1][704] = settr(1340,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1340,0,703,0,0,"sub-sequence", 1, 2, 0);
	trans[1][703]	= settr(1339,2,706,247,247,"CRM2BEG!5,4", 1, 4, 0);
	trans[1][708]	= settr(0,0,0,0,0,"canc = 1",0,0,0);
	T = trans[ 1][769] = settr(1405,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1405,2,720,0,0,"ATOMIC", 1, 2, 0);
	T = trans[ 1][720] = settr(1356,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1356,0,718,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][718] = settr(1354,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1354,2,710,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1354,2,712,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1354,2,714,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1354,2,716,0,0,"IF", 1, 2, 0);
	trans[1][710]	= settr(1346,2,711,248,0,"(BEG2CRM?[22,S])", 1, 2, 0);
	trans[1][711]	= settr(1347,2,767,249,249,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][719]	= settr(1355,2,767,1,0,".(goto)", 1, 2, 0);
	trans[1][712]	= settr(1348,2,713,250,0,"(BEG2CRM?[22,BF])", 1, 2, 0);
	trans[1][713]	= settr(1349,2,767,251,251,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][714]	= settr(1350,2,715,252,0,"(BEG2CRM?[22,TF])", 1, 2, 0);
	trans[1][715]	= settr(1351,2,767,253,253,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][716]	= settr(1352,2,717,254,0,"(BEG2CRM?[22,TO])", 1, 2, 0);
	trans[1][717]	= settr(1353,2,767,255,255,"BEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][767] = settr(1403,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1403,0,765,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][765] = settr(1401,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1401,2,721,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1401,2,762,0,0,"IF", 1, 2, 0);
	trans[1][721]	= settr(1357,2,761,256,0,"((((REJCONFTO_bo.oblig==1)&&((REJCONFTO_bo.role_pl==STORE)==1))&&((REJCONFTO_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][761] = settr(1397,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1397,0,730,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 1][730] = settr(1366,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1366,0,722,0,0,"sub-sequence", 1, 2, 0);
	trans[1][722]	= settr(1358,6,734,257,257,"printf('\\n\\n')", 1, 2, 0); /* m: 723 -> 0,734 */
	reached1[723] = 1;
	trans[1][723]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][724]	= settr(0,0,0,0,0,"printf('<originator>store</originator>\\n')",0,0,0);
	trans[1][725]	= settr(0,0,0,0,0,"printf('<responder>buyer</responder>\\n')",0,0,0);
	trans[1][726]	= settr(0,0,0,0,0,"printf('<type>REJCONFTO</type>\\n')",0,0,0);
	trans[1][727]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][728]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][729]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][734] = settr(1370,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1370,0,731,0,0,"sub-sequence", 1, 2, 0);
	trans[1][731]	= settr(1367,2,738,258,258,"REJ_bo.oblig = 0", 1, 2, 0); /* m: 732 -> 0,738 */
	reached1[732] = 1;
	trans[1][732]	= settr(0,0,0,0,0,"assert(!(((REJ_bo.oblig==1)&&(REJ_bo.prohib==1))))",0,0,0);
	trans[1][733]	= settr(0,0,0,0,0,"assert(!(((REJ_bo.oblig==1)&&(REJ_bo.right==1))))",0,0,0);
	T = trans[ 1][738] = settr(1374,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1374,0,735,0,0,"sub-sequence", 1, 2, 0);
	trans[1][735]	= settr(1371,2,742,259,259,"CONF_bo.oblig = 0", 1, 2, 0); /* m: 736 -> 0,742 */
	reached1[736] = 1;
	trans[1][736]	= settr(0,0,0,0,0,"assert(!(((CONF_bo.oblig==1)&&(CONF_bo.prohib==1))))",0,0,0);
	trans[1][737]	= settr(0,0,0,0,0,"assert(!(((CONF_bo.oblig==1)&&(CONF_bo.right==1))))",0,0,0);
	T = trans[ 1][742] = settr(1378,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1378,0,739,0,0,"sub-sequence", 1, 2, 0);
	trans[1][739]	= settr(1375,2,744,260,260,"REJCONFTO_bo.oblig = 0", 1, 2, 0); /* m: 740 -> 0,744 */
	reached1[740] = 1;
	trans[1][740]	= settr(0,0,0,0,0,"assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.prohib==1))))",0,0,0);
	trans[1][741]	= settr(0,0,0,0,0,"assert(!(((REJCONFTO_bo.oblig==1)&&(REJCONFTO_bo.right==1))))",0,0,0);
	T = trans[ 1][744] = settr(1380,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1380,0,743,0,0,"sub-sequence", 1, 2, 0);
	trans[1][743]	= settr(1379,2,747,261,261,"cntttr = 0", 1, 2, 0); /* m: 745 -> 0,747 */
	reached1[745] = 1;
	trans[1][745]	= settr(0,0,0,0,0,"BUYERexTrace = 0",0,0,0);
	T = trans[ 1][747] = settr(1383,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1383,0,746,0,0,"sub-sequence", 1, 2, 0);
	trans[1][746]	= settr(1382,2,757,262,262,"cntttr = 0", 1, 2, 0); /* m: 748 -> 0,757 */
	reached1[748] = 1;
	trans[1][748]	= settr(0,0,0,0,0,"STOREexTrace = 0",0,0,0);
	T = trans[ 1][757] = settr(1393,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1393,0,749,0,0,"sub-sequence", 1, 2, 0);
	trans[1][749]	= settr(1385,2,760,263,263,"printf('\\n\\n')", 1, 2, 0); /* m: 750 -> 0,760 */
	reached1[750] = 1;
	trans[1][750]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][751]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][752]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][753]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][754]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][755]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][756]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][758]	= settr(0,0,0,0,0,"STOREexTrace = (STOREexTrace|(1<<REJCONFTO_bo.id))",0,0,0);
	T = trans[ 1][760] = settr(1396,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1396,0,759,0,0,"sub-sequence", 1, 2, 0);
	trans[1][759]	= settr(1395,2,766,264,264,"CRM2BEG!7,1", 1, 4, 0);
	trans[1][766]	= settr(1402,0,830,265,265,".(goto)", 1, 2, 0); /* m: 768 -> 0,830 */
	reached1[768] = 1;
	trans[1][762]	= settr(1398,2,764,2,0,"else", 1, 2, 0);
	T = trans[ 1][764] = settr(1400,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1400,0,763,0,0,"sub-sequence", 1, 2, 0);
	trans[1][763]	= settr(1399,2,766,266,266,"CRM2BEG!5,4", 1, 4, 0);
	trans[1][768]	= settr(0,0,0,0,0,"rejconfto = 1",0,0,0);
	T = trans[ 1][829] = settr(1465,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(1465,2,780,0,0,"ATOMIC", 1, 2, 0);
	T = trans[ 1][780] = settr(1416,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1416,0,778,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][778] = settr(1414,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1414,2,770,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1414,2,772,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1414,2,774,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1414,2,776,0,0,"IF", 1, 2, 0);
	trans[1][770]	= settr(1406,2,771,267,0,"(BEG2CRM?[23,S])", 1, 2, 0);
	trans[1][771]	= settr(1407,2,827,268,268,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][779]	= settr(1415,2,827,1,0,".(goto)", 1, 2, 0);
	trans[1][772]	= settr(1408,2,773,269,0,"(BEG2CRM?[23,BF])", 1, 2, 0);
	trans[1][773]	= settr(1409,2,827,270,270,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][774]	= settr(1410,2,775,271,0,"(BEG2CRM?[23,TF])", 1, 2, 0);
	trans[1][775]	= settr(1411,2,827,272,272,"BEG2CRM?_,_", 1, 503, 0);
	trans[1][776]	= settr(1412,2,777,273,0,"(BEG2CRM?[23,TO])", 1, 2, 0);
	trans[1][777]	= settr(1413,2,827,274,274,"BEG2CRM?_,_", 1, 503, 0);
	T = trans[ 1][827] = settr(1463,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1463,0,825,0,0,"sub-sequence", 1, 2, 0);
	T = trans[1][825] = settr(1461,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(1461,2,781,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(1461,2,822,0,0,"IF", 1, 2, 0);
	trans[1][781]	= settr(1417,2,821,275,0,"((((PAYCANCTO_bo.oblig==1)&&((PAYCANCTO_bo.role_pl==BUYER)==1))&&((PAYCANCTO_bo.status==S)==1)))", 1, 2, 0);
	T = trans[ 1][821] = settr(1457,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1457,0,790,0,0,"sub-sequence", 1, 2, 0);
	T = trans[ 1][790] = settr(1426,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1426,0,782,0,0,"sub-sequence", 1, 2, 0);
	trans[1][782]	= settr(1418,6,794,276,276,"printf('\\n\\n')", 1, 2, 0); /* m: 783 -> 0,794 */
	reached1[783] = 1;
	trans[1][783]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][784]	= settr(0,0,0,0,0,"printf('<originator>buyer</originator>\\n')",0,0,0);
	trans[1][785]	= settr(0,0,0,0,0,"printf('<responder>store</responder>\\n')",0,0,0);
	trans[1][786]	= settr(0,0,0,0,0,"printf('<type>PAYCANCTO</type>\\n')",0,0,0);
	trans[1][787]	= settr(0,0,0,0,0,"printf('<status>success</status>\\n')",0,0,0);
	trans[1][788]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][789]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	T = trans[ 1][794] = settr(1430,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1430,0,791,0,0,"sub-sequence", 1, 2, 0);
	trans[1][791]	= settr(1427,2,798,277,277,"PAY_bo.oblig = 0", 1, 2, 0); /* m: 792 -> 0,798 */
	reached1[792] = 1;
	trans[1][792]	= settr(0,0,0,0,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.prohib==1))))",0,0,0);
	trans[1][793]	= settr(0,0,0,0,0,"assert(!(((PAY_bo.oblig==1)&&(PAY_bo.right==1))))",0,0,0);
	T = trans[ 1][798] = settr(1434,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1434,0,795,0,0,"sub-sequence", 1, 2, 0);
	trans[1][795]	= settr(1431,2,802,278,278,"CANC_bo.oblig = 0", 1, 2, 0); /* m: 796 -> 0,802 */
	reached1[796] = 1;
	trans[1][796]	= settr(0,0,0,0,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.prohib==1))))",0,0,0);
	trans[1][797]	= settr(0,0,0,0,0,"assert(!(((CANC_bo.oblig==1)&&(CANC_bo.right==1))))",0,0,0);
	T = trans[ 1][802] = settr(1438,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1438,0,799,0,0,"sub-sequence", 1, 2, 0);
	trans[1][799]	= settr(1435,2,804,279,279,"PAYCANCTO_bo.oblig = 0", 1, 2, 0); /* m: 800 -> 0,804 */
	reached1[800] = 1;
	trans[1][800]	= settr(0,0,0,0,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.prohib==1))))",0,0,0);
	trans[1][801]	= settr(0,0,0,0,0,"assert(!(((PAYCANCTO_bo.oblig==1)&&(PAYCANCTO_bo.right==1))))",0,0,0);
	T = trans[ 1][804] = settr(1440,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1440,0,803,0,0,"sub-sequence", 1, 2, 0);
	trans[1][803]	= settr(1439,2,807,280,280,"cntttr = 0", 1, 2, 0); /* m: 805 -> 0,807 */
	reached1[805] = 1;
	trans[1][805]	= settr(0,0,0,0,0,"BUYERexTrace = 0",0,0,0);
	T = trans[ 1][807] = settr(1443,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1443,0,806,0,0,"sub-sequence", 1, 2, 0);
	trans[1][806]	= settr(1442,2,817,281,281,"cntttr = 0", 1, 2, 0); /* m: 808 -> 0,817 */
	reached1[808] = 1;
	trans[1][808]	= settr(0,0,0,0,0,"STOREexTrace = 0",0,0,0);
	T = trans[ 1][817] = settr(1453,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1453,0,809,0,0,"sub-sequence", 1, 2, 0);
	trans[1][809]	= settr(1445,2,820,282,282,"printf('\\n\\n')", 1, 2, 0); /* m: 810 -> 0,820 */
	reached1[810] = 1;
	trans[1][810]	= settr(0,0,0,0,0,"printf('<event>\\n')",0,0,0);
	trans[1][811]	= settr(0,0,0,0,0,"printf('<originator>reset</originator>\\n')",0,0,0);
	trans[1][812]	= settr(0,0,0,0,0,"printf('<responder>reset</responder>\\n')",0,0,0);
	trans[1][813]	= settr(0,0,0,0,0,"printf('<type>reset</type>\\n')",0,0,0);
	trans[1][814]	= settr(0,0,0,0,0,"printf('<status>reset</status>\\n')",0,0,0);
	trans[1][815]	= settr(0,0,0,0,0,"printf('</event>')",0,0,0);
	trans[1][816]	= settr(0,0,0,0,0,"printf('\\n\\n')",0,0,0);
	trans[1][818]	= settr(0,0,0,0,0,"BUYERexTrace = (BUYERexTrace|(1<<PAYCANCTO_bo.id))",0,0,0);
	T = trans[ 1][820] = settr(1456,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1456,0,819,0,0,"sub-sequence", 1, 2, 0);
	trans[1][819]	= settr(1455,2,826,283,283,"CRM2BEG!7,1", 1, 4, 0);
	trans[1][826]	= settr(1462,0,830,284,284,".(goto)", 1, 2, 0); /* m: 828 -> 0,830 */
	reached1[828] = 1;
	trans[1][822]	= settr(1458,2,824,2,0,"else", 1, 2, 0);
	T = trans[ 1][824] = settr(1460,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(1460,0,823,0,0,"sub-sequence", 1, 2, 0);
	trans[1][823]	= settr(1459,2,826,285,285,"CRM2BEG!5,4", 1, 4, 0);
	trans[1][828]	= settr(0,0,0,0,0,"paycancto = 1",0,0,0);
	trans[1][832]	= settr(1468,0,833,1,0,"break", 0, 2, 0);
	trans[1][833]	= settr(1469,0,0,286,286,"-end-", 0, 3500, 0);

	/* proctype 0: BEG */

	trans[0] = (Trans **) emalloc(638*sizeof(Trans *));

	T = trans[ 0][73] = settr(72,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(72,0,9,0,0,"sub-sequence", 0, 2, 0);
	T = trans[ 0][9] = settr(8,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(8,0,8,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][8]	= settr(7,32,18,287,287,"D_STEP160", 1, 2, 0);
	T = trans[ 0][18] = settr(17,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(17,0,17,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][17]	= settr(16,32,27,288,288,"D_STEP160", 1, 2, 0);
	T = trans[ 0][27] = settr(26,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(26,0,26,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][26]	= settr(25,32,36,289,289,"D_STEP160", 1, 2, 0);
	T = trans[ 0][36] = settr(35,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(35,0,35,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][35]	= settr(34,32,45,290,290,"D_STEP160", 1, 2, 0);
	T = trans[ 0][45] = settr(44,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(44,0,44,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][44]	= settr(43,32,54,291,291,"D_STEP160", 1, 2, 0);
	T = trans[ 0][54] = settr(53,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(53,0,53,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][53]	= settr(52,32,63,292,292,"D_STEP160", 1, 2, 0);
	T = trans[ 0][63] = settr(62,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(62,0,62,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][62]	= settr(61,32,72,293,293,"D_STEP160", 1, 2, 0);
	T = trans[ 0][72] = settr(71,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(71,0,71,0,0,"sub-sequence", 0, 2, 0);
/*->*/	trans[0][71]	= settr(70,32,634,294,294,"D_STEP160", 1, 2, 0);
	trans[0][635]	= settr(634,0,634,1,0,".(goto)", 0, 2, 0);
	T = trans[0][634] = settr(633,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(633,0,74,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(633,0,154,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(633,0,155,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(633,0,235,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(633,0,236,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(633,0,316,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(633,0,317,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(633,0,397,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(633,0,398,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(633,0,478,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(633,0,479,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(633,0,559,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(633,0,560,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(633,0,597,0,0,"DO", 0, 2, 0);
	trans[0][74]	= settr(73,0,75,295,0,"((((BUYRQ_bo.right==1)||(BUYRQ_bo.oblig==1))||(BUYRQ_bo.prohib==1)))", 1, 2, 0);
	trans[0][75]	= settr(74,0,77,296,296,"BUYRQ_bo.status = S", 1, 2, 0);
	T = trans[ 0][77] = settr(76,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(76,0,76,0,0,"sub-sequence", 0, 2, 0);
	trans[0][76]	= settr(75,0,110,297,297,"BEG2CRM!16,15", 1, 3, 0);
	T = trans[ 0][110] = settr(109,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(109,0,108,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][108] = settr(107,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(107,0,79,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(107,0,82,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(107,0,85,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(107,0,88,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(107,0,91,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(107,0,94,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(107,0,97,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(107,0,100,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(107,0,103,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(107,0,106,0,0,"IF", 0, 2, 0);
	T = trans[ 0][79] = settr(78,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(78,0,78,0,0,"sub-sequence", 0, 2, 0);
	trans[0][78]	= settr(77,0,80,298,298,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][80]	= settr(79,0,634,1,0,"(1)", 0, 2, 0);
	trans[0][109]	= settr(108,0,634,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][82] = settr(81,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(81,0,81,0,0,"sub-sequence", 0, 2, 0);
	trans[0][81]	= settr(80,0,83,299,299,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][83]	= settr(82,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][85] = settr(84,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(84,0,84,0,0,"sub-sequence", 0, 2, 0);
	trans[0][84]	= settr(83,0,86,300,300,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][86]	= settr(85,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][88] = settr(87,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(87,0,87,0,0,"sub-sequence", 0, 2, 0);
	trans[0][87]	= settr(86,0,89,301,301,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][89]	= settr(88,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][91] = settr(90,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(90,0,90,0,0,"sub-sequence", 0, 2, 0);
	trans[0][90]	= settr(89,0,73,302,302,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][92]	= settr(91,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][94] = settr(93,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(93,0,93,0,0,"sub-sequence", 0, 2, 0);
	trans[0][93]	= settr(92,0,73,303,303,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][95]	= settr(94,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][97] = settr(96,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(96,0,96,0,0,"sub-sequence", 0, 2, 0);
	trans[0][96]	= settr(95,0,73,304,304,"CRM2BEG?6,2", 1, 504, 0);
	trans[0][98]	= settr(97,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][100] = settr(99,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(99,0,99,0,0,"sub-sequence", 0, 2, 0);
	trans[0][99]	= settr(98,0,634,305,305,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][101]	= settr(100,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][103] = settr(102,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(102,0,102,0,0,"sub-sequence", 0, 2, 0);
	trans[0][102]	= settr(101,0,634,306,306,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][104]	= settr(103,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][106] = settr(105,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(105,0,105,0,0,"sub-sequence", 0, 2, 0);
	trans[0][105]	= settr(104,0,634,307,307,"CRM2BEG?6,1", 1, 504, 0);
	trans[0][107]	= settr(106,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][154] = settr(153,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(153,2,111,0,0,"ATOMIC", 1, 2, 0);
	trans[0][111]	= settr(110,2,114,308,308,"((((BUYRQ_bo.right==1)||(BUYRQ_bo.oblig==1))||(BUYRQ_bo.prohib==1)))", 1, 2, 0); /* m: 112 -> 114,0 */
	reached0[112] = 1;
	trans[0][112]	= settr(0,0,0,0,0,"BUYRQ_bo.status = BF",0,0,0);
	T = trans[ 0][114] = settr(113,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(113,0,113,0,0,"sub-sequence", 1, 2, 0);
	trans[0][113]	= settr(112,2,147,309,309,"BEG2CRM!16,14", 1, 3, 0);
	T = trans[ 0][147] = settr(146,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(146,0,145,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][145] = settr(144,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(144,2,116,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(144,2,119,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(144,2,122,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(144,2,125,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(144,2,128,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(144,2,131,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(144,2,134,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(144,2,137,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(144,2,140,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(144,2,143,0,0,"IF", 1, 2, 0);
	T = trans[ 0][116] = settr(115,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(115,0,115,0,0,"sub-sequence", 1, 2, 0);
	trans[0][115]	= settr(114,2,117,310,310,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][117]	= settr(116,2,152,1,0,"(1)", 1, 2, 0);
	trans[0][146]	= settr(145,2,152,1,0,".(goto)", 1, 2, 0);
	T = trans[ 0][119] = settr(118,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(118,0,118,0,0,"sub-sequence", 1, 2, 0);
	trans[0][118]	= settr(117,2,120,311,311,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][120]	= settr(119,2,152,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][122] = settr(121,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(121,0,121,0,0,"sub-sequence", 1, 2, 0);
	trans[0][121]	= settr(120,2,123,312,312,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][123]	= settr(122,2,152,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][125] = settr(124,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(124,0,124,0,0,"sub-sequence", 1, 2, 0);
	trans[0][124]	= settr(123,2,126,313,313,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][126]	= settr(125,2,152,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][128] = settr(127,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(127,0,127,0,0,"sub-sequence", 1, 2, 0);
	trans[0][127]	= settr(126,4,73,314,314,"CRM2BEG?8,2", 1, 504, 0); /* m: 129 -> 73,0 */
	reached0[129] = 1;
	trans[0][129]	= settr(128,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][131] = settr(130,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(130,0,130,0,0,"sub-sequence", 1, 2, 0);
	trans[0][130]	= settr(129,4,73,315,315,"CRM2BEG?7,2", 1, 504, 0); /* m: 132 -> 73,0 */
	reached0[132] = 1;
	trans[0][132]	= settr(131,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][134] = settr(133,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(133,0,133,0,0,"sub-sequence", 1, 2, 0);
	trans[0][133]	= settr(132,4,73,316,316,"CRM2BEG?6,2", 1, 504, 0); /* m: 135 -> 73,0 */
	reached0[135] = 1;
	trans[0][135]	= settr(134,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][137] = settr(136,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(136,0,136,0,0,"sub-sequence", 1, 2, 0);
	trans[0][136]	= settr(135,4,634,317,317,"CRM2BEG?8,1", 1, 504, 0); /* m: 138 -> 634,0 */
	reached0[138] = 1;
	trans[0][138]	= settr(137,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[ 0][140] = settr(139,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(139,0,139,0,0,"sub-sequence", 1, 2, 0);
	trans[0][139]	= settr(138,4,634,318,318,"CRM2BEG?7,1", 1, 504, 0); /* m: 141 -> 634,0 */
	reached0[141] = 1;
	trans[0][141]	= settr(140,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[ 0][143] = settr(142,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(142,0,142,0,0,"sub-sequence", 1, 2, 0);
	trans[0][142]	= settr(141,4,634,319,319,"CRM2BEG?6,1", 1, 504, 0); /* m: 144 -> 634,0 */
	reached0[144] = 1;
	trans[0][144]	= settr(143,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[0][152] = settr(151,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(151,2,148,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(151,2,150,0,0,"IF", 1, 2, 0);
	trans[0][148]	= settr(147,0,634,320,320,"((numbuyreqbizfail<2))", 1, 2, 0); /* m: 149 -> 634,0 */
	reached0[149] = 1;
	trans[0][149]	= settr(0,0,0,0,0,"numbuyreqbizfail = (numbuyreqbizfail+1)",0,0,0);
	trans[0][153]	= settr(152,0,634,321,321,".(goto)", 1, 2, 0);
	trans[0][150]	= settr(149,0,634,322,322,"((numbuyreqbizfail==2))", 1, 2, 0); /* m: 151 -> 634,0 */
	reached0[151] = 1;
	trans[0][151]	= settr(0,0,0,0,0,"buyreqbizfail = 1",0,0,0);
	trans[0][155]	= settr(154,0,156,323,0,"((((REJ_bo.right==1)||(REJ_bo.oblig==1))||(REJ_bo.prohib==1)))", 1, 2, 0);
	trans[0][156]	= settr(155,0,158,324,324,"REJ_bo.status = S", 1, 2, 0);
	T = trans[ 0][158] = settr(157,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(157,0,157,0,0,"sub-sequence", 0, 2, 0);
	trans[0][157]	= settr(156,0,191,325,325,"BEG2CRM!17,15", 1, 3, 0);
	T = trans[ 0][191] = settr(190,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(190,0,189,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][189] = settr(188,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(188,0,160,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(188,0,163,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(188,0,166,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(188,0,169,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(188,0,172,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(188,0,175,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(188,0,178,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(188,0,181,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(188,0,184,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(188,0,187,0,0,"IF", 0, 2, 0);
	T = trans[ 0][160] = settr(159,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(159,0,159,0,0,"sub-sequence", 0, 2, 0);
	trans[0][159]	= settr(158,0,161,326,326,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][161]	= settr(160,0,634,1,0,"(1)", 0, 2, 0);
	trans[0][190]	= settr(189,0,634,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][163] = settr(162,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(162,0,162,0,0,"sub-sequence", 0, 2, 0);
	trans[0][162]	= settr(161,0,164,327,327,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][164]	= settr(163,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][166] = settr(165,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(165,0,165,0,0,"sub-sequence", 0, 2, 0);
	trans[0][165]	= settr(164,0,167,328,328,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][167]	= settr(166,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][169] = settr(168,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(168,0,168,0,0,"sub-sequence", 0, 2, 0);
	trans[0][168]	= settr(167,0,170,329,329,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][170]	= settr(169,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][172] = settr(171,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(171,0,171,0,0,"sub-sequence", 0, 2, 0);
	trans[0][171]	= settr(170,0,73,330,330,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][173]	= settr(172,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][175] = settr(174,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(174,0,174,0,0,"sub-sequence", 0, 2, 0);
	trans[0][174]	= settr(173,0,73,331,331,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][176]	= settr(175,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][178] = settr(177,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(177,0,177,0,0,"sub-sequence", 0, 2, 0);
	trans[0][177]	= settr(176,0,73,332,332,"CRM2BEG?6,2", 1, 504, 0);
	trans[0][179]	= settr(178,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][181] = settr(180,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(180,0,180,0,0,"sub-sequence", 0, 2, 0);
	trans[0][180]	= settr(179,0,634,333,333,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][182]	= settr(181,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][184] = settr(183,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(183,0,183,0,0,"sub-sequence", 0, 2, 0);
	trans[0][183]	= settr(182,0,634,334,334,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][185]	= settr(184,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][187] = settr(186,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(186,0,186,0,0,"sub-sequence", 0, 2, 0);
	trans[0][186]	= settr(185,0,634,335,335,"CRM2BEG?6,1", 1, 504, 0);
	trans[0][188]	= settr(187,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][235] = settr(234,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(234,2,192,0,0,"ATOMIC", 1, 2, 0);
	trans[0][192]	= settr(191,2,195,336,336,"((((REJ_bo.right==1)||(REJ_bo.oblig==1))||(REJ_bo.prohib==1)))", 1, 2, 0); /* m: 193 -> 195,0 */
	reached0[193] = 1;
	trans[0][193]	= settr(0,0,0,0,0,"REJ_bo.status = BF",0,0,0);
	T = trans[ 0][195] = settr(194,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(194,0,194,0,0,"sub-sequence", 1, 2, 0);
	trans[0][194]	= settr(193,2,228,337,337,"BEG2CRM!17,14", 1, 3, 0);
	T = trans[ 0][228] = settr(227,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(227,0,226,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][226] = settr(225,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(225,2,197,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(225,2,200,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(225,2,203,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(225,2,206,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(225,2,209,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(225,2,212,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(225,2,215,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(225,2,218,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(225,2,221,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(225,2,224,0,0,"IF", 1, 2, 0);
	T = trans[ 0][197] = settr(196,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(196,0,196,0,0,"sub-sequence", 1, 2, 0);
	trans[0][196]	= settr(195,2,198,338,338,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][198]	= settr(197,2,233,1,0,"(1)", 1, 2, 0);
	trans[0][227]	= settr(226,2,233,1,0,".(goto)", 1, 2, 0);
	T = trans[ 0][200] = settr(199,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(199,0,199,0,0,"sub-sequence", 1, 2, 0);
	trans[0][199]	= settr(198,2,201,339,339,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][201]	= settr(200,2,233,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][203] = settr(202,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(202,0,202,0,0,"sub-sequence", 1, 2, 0);
	trans[0][202]	= settr(201,2,204,340,340,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][204]	= settr(203,2,233,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][206] = settr(205,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(205,0,205,0,0,"sub-sequence", 1, 2, 0);
	trans[0][205]	= settr(204,2,207,341,341,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][207]	= settr(206,2,233,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][209] = settr(208,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(208,0,208,0,0,"sub-sequence", 1, 2, 0);
	trans[0][208]	= settr(207,4,73,342,342,"CRM2BEG?8,2", 1, 504, 0); /* m: 210 -> 73,0 */
	reached0[210] = 1;
	trans[0][210]	= settr(209,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][212] = settr(211,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(211,0,211,0,0,"sub-sequence", 1, 2, 0);
	trans[0][211]	= settr(210,4,73,343,343,"CRM2BEG?7,2", 1, 504, 0); /* m: 213 -> 73,0 */
	reached0[213] = 1;
	trans[0][213]	= settr(212,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][215] = settr(214,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(214,0,214,0,0,"sub-sequence", 1, 2, 0);
	trans[0][214]	= settr(213,4,73,344,344,"CRM2BEG?6,2", 1, 504, 0); /* m: 216 -> 73,0 */
	reached0[216] = 1;
	trans[0][216]	= settr(215,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][218] = settr(217,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(217,0,217,0,0,"sub-sequence", 1, 2, 0);
	trans[0][217]	= settr(216,4,634,345,345,"CRM2BEG?8,1", 1, 504, 0); /* m: 219 -> 634,0 */
	reached0[219] = 1;
	trans[0][219]	= settr(218,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[ 0][221] = settr(220,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(220,0,220,0,0,"sub-sequence", 1, 2, 0);
	trans[0][220]	= settr(219,4,634,346,346,"CRM2BEG?7,1", 1, 504, 0); /* m: 222 -> 634,0 */
	reached0[222] = 1;
	trans[0][222]	= settr(221,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[ 0][224] = settr(223,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(223,0,223,0,0,"sub-sequence", 1, 2, 0);
	trans[0][223]	= settr(222,4,634,347,347,"CRM2BEG?6,1", 1, 504, 0); /* m: 225 -> 634,0 */
	reached0[225] = 1;
	trans[0][225]	= settr(224,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[0][233] = settr(232,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(232,2,229,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(232,2,231,0,0,"IF", 1, 2, 0);
	trans[0][229]	= settr(228,0,634,348,348,"((numrejbizfail<2))", 1, 2, 0); /* m: 230 -> 634,0 */
	reached0[230] = 1;
	trans[0][230]	= settr(0,0,0,0,0,"numrejbizfail = (numrejbizfail+1)",0,0,0);
	trans[0][234]	= settr(233,0,634,349,349,".(goto)", 1, 2, 0);
	trans[0][231]	= settr(230,0,634,350,350,"((numrejbizfail==2))", 1, 2, 0); /* m: 232 -> 634,0 */
	reached0[232] = 1;
	trans[0][232]	= settr(0,0,0,0,0,"rejbizfail = 1",0,0,0);
	trans[0][236]	= settr(235,0,237,351,0,"((((CONF_bo.right==1)||(CONF_bo.oblig==1))||(CONF_bo.prohib==1)))", 1, 2, 0);
	trans[0][237]	= settr(236,0,239,352,352,"CONF_bo.status = S", 1, 2, 0);
	T = trans[ 0][239] = settr(238,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(238,0,238,0,0,"sub-sequence", 0, 2, 0);
	trans[0][238]	= settr(237,0,272,353,353,"BEG2CRM!18,15", 1, 3, 0);
	T = trans[ 0][272] = settr(271,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(271,0,270,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][270] = settr(269,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(269,0,241,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(269,0,244,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(269,0,247,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(269,0,250,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(269,0,253,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(269,0,256,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(269,0,259,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(269,0,262,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(269,0,265,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(269,0,268,0,0,"IF", 0, 2, 0);
	T = trans[ 0][241] = settr(240,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(240,0,240,0,0,"sub-sequence", 0, 2, 0);
	trans[0][240]	= settr(239,0,242,354,354,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][242]	= settr(241,0,634,1,0,"(1)", 0, 2, 0);
	trans[0][271]	= settr(270,0,634,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][244] = settr(243,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(243,0,243,0,0,"sub-sequence", 0, 2, 0);
	trans[0][243]	= settr(242,0,245,355,355,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][245]	= settr(244,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][247] = settr(246,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(246,0,246,0,0,"sub-sequence", 0, 2, 0);
	trans[0][246]	= settr(245,0,248,356,356,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][248]	= settr(247,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][250] = settr(249,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(249,0,249,0,0,"sub-sequence", 0, 2, 0);
	trans[0][249]	= settr(248,0,251,357,357,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][251]	= settr(250,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][253] = settr(252,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(252,0,252,0,0,"sub-sequence", 0, 2, 0);
	trans[0][252]	= settr(251,0,73,358,358,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][254]	= settr(253,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][256] = settr(255,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(255,0,255,0,0,"sub-sequence", 0, 2, 0);
	trans[0][255]	= settr(254,0,73,359,359,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][257]	= settr(256,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][259] = settr(258,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(258,0,258,0,0,"sub-sequence", 0, 2, 0);
	trans[0][258]	= settr(257,0,73,360,360,"CRM2BEG?6,2", 1, 504, 0);
	trans[0][260]	= settr(259,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][262] = settr(261,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(261,0,261,0,0,"sub-sequence", 0, 2, 0);
	trans[0][261]	= settr(260,0,634,361,361,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][263]	= settr(262,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][265] = settr(264,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(264,0,264,0,0,"sub-sequence", 0, 2, 0);
	trans[0][264]	= settr(263,0,634,362,362,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][266]	= settr(265,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][268] = settr(267,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(267,0,267,0,0,"sub-sequence", 0, 2, 0);
	trans[0][267]	= settr(266,0,634,363,363,"CRM2BEG?6,1", 1, 504, 0);
	trans[0][269]	= settr(268,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][316] = settr(315,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(315,2,273,0,0,"ATOMIC", 1, 2, 0);
	trans[0][273]	= settr(272,2,276,364,364,"((((CONF_bo.right==1)||(CONF_bo.oblig==1))||(CONF_bo.prohib==1)))", 1, 2, 0); /* m: 274 -> 276,0 */
	reached0[274] = 1;
	trans[0][274]	= settr(0,0,0,0,0,"CONF_bo.status = BF",0,0,0);
	T = trans[ 0][276] = settr(275,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(275,0,275,0,0,"sub-sequence", 1, 2, 0);
	trans[0][275]	= settr(274,2,309,365,365,"BEG2CRM!18,14", 1, 3, 0);
	T = trans[ 0][309] = settr(308,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(308,0,307,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][307] = settr(306,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(306,2,278,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(306,2,281,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(306,2,284,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(306,2,287,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(306,2,290,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(306,2,293,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(306,2,296,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(306,2,299,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(306,2,302,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(306,2,305,0,0,"IF", 1, 2, 0);
	T = trans[ 0][278] = settr(277,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(277,0,277,0,0,"sub-sequence", 1, 2, 0);
	trans[0][277]	= settr(276,2,279,366,366,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][279]	= settr(278,2,314,1,0,"(1)", 1, 2, 0);
	trans[0][308]	= settr(307,2,314,1,0,".(goto)", 1, 2, 0);
	T = trans[ 0][281] = settr(280,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(280,0,280,0,0,"sub-sequence", 1, 2, 0);
	trans[0][280]	= settr(279,2,282,367,367,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][282]	= settr(281,2,314,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][284] = settr(283,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(283,0,283,0,0,"sub-sequence", 1, 2, 0);
	trans[0][283]	= settr(282,2,285,368,368,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][285]	= settr(284,2,314,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][287] = settr(286,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(286,0,286,0,0,"sub-sequence", 1, 2, 0);
	trans[0][286]	= settr(285,2,288,369,369,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][288]	= settr(287,2,314,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][290] = settr(289,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(289,0,289,0,0,"sub-sequence", 1, 2, 0);
	trans[0][289]	= settr(288,4,73,370,370,"CRM2BEG?8,2", 1, 504, 0); /* m: 291 -> 73,0 */
	reached0[291] = 1;
	trans[0][291]	= settr(290,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][293] = settr(292,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(292,0,292,0,0,"sub-sequence", 1, 2, 0);
	trans[0][292]	= settr(291,4,73,371,371,"CRM2BEG?7,2", 1, 504, 0); /* m: 294 -> 73,0 */
	reached0[294] = 1;
	trans[0][294]	= settr(293,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][296] = settr(295,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(295,0,295,0,0,"sub-sequence", 1, 2, 0);
	trans[0][295]	= settr(294,4,73,372,372,"CRM2BEG?6,2", 1, 504, 0); /* m: 297 -> 73,0 */
	reached0[297] = 1;
	trans[0][297]	= settr(296,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][299] = settr(298,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(298,0,298,0,0,"sub-sequence", 1, 2, 0);
	trans[0][298]	= settr(297,4,634,373,373,"CRM2BEG?8,1", 1, 504, 0); /* m: 300 -> 634,0 */
	reached0[300] = 1;
	trans[0][300]	= settr(299,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[ 0][302] = settr(301,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(301,0,301,0,0,"sub-sequence", 1, 2, 0);
	trans[0][301]	= settr(300,4,634,374,374,"CRM2BEG?7,1", 1, 504, 0); /* m: 303 -> 634,0 */
	reached0[303] = 1;
	trans[0][303]	= settr(302,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[ 0][305] = settr(304,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(304,0,304,0,0,"sub-sequence", 1, 2, 0);
	trans[0][304]	= settr(303,4,634,375,375,"CRM2BEG?6,1", 1, 504, 0); /* m: 306 -> 634,0 */
	reached0[306] = 1;
	trans[0][306]	= settr(305,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[0][314] = settr(313,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(313,2,310,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(313,2,312,0,0,"IF", 1, 2, 0);
	trans[0][310]	= settr(309,0,634,376,376,"((numconfbizfail<2))", 1, 2, 0); /* m: 311 -> 634,0 */
	reached0[311] = 1;
	trans[0][311]	= settr(0,0,0,0,0,"numconfbizfail = (numconfbizfail+1)",0,0,0);
	trans[0][315]	= settr(314,0,634,377,377,".(goto)", 1, 2, 0);
	trans[0][312]	= settr(311,0,634,378,378,"((numconfbizfail==2))", 1, 2, 0); /* m: 313 -> 634,0 */
	reached0[313] = 1;
	trans[0][313]	= settr(0,0,0,0,0,"confbizfail = 1",0,0,0);
	trans[0][317]	= settr(316,0,318,379,0,"((((PAY_bo.right==1)||(PAY_bo.oblig==1))||(PAY_bo.prohib==1)))", 1, 2, 0);
	trans[0][318]	= settr(317,0,320,380,380,"PAY_bo.status = S", 1, 2, 0);
	T = trans[ 0][320] = settr(319,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(319,0,319,0,0,"sub-sequence", 0, 2, 0);
	trans[0][319]	= settr(318,0,353,381,381,"BEG2CRM!19,15", 1, 3, 0);
	T = trans[ 0][353] = settr(352,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(352,0,351,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][351] = settr(350,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(350,0,322,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(350,0,325,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(350,0,328,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(350,0,331,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(350,0,334,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(350,0,337,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(350,0,340,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(350,0,343,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(350,0,346,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(350,0,349,0,0,"IF", 0, 2, 0);
	T = trans[ 0][322] = settr(321,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(321,0,321,0,0,"sub-sequence", 0, 2, 0);
	trans[0][321]	= settr(320,0,323,382,382,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][323]	= settr(322,0,634,1,0,"(1)", 0, 2, 0);
	trans[0][352]	= settr(351,0,634,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][325] = settr(324,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(324,0,324,0,0,"sub-sequence", 0, 2, 0);
	trans[0][324]	= settr(323,0,326,383,383,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][326]	= settr(325,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][328] = settr(327,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(327,0,327,0,0,"sub-sequence", 0, 2, 0);
	trans[0][327]	= settr(326,0,329,384,384,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][329]	= settr(328,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][331] = settr(330,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(330,0,330,0,0,"sub-sequence", 0, 2, 0);
	trans[0][330]	= settr(329,0,332,385,385,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][332]	= settr(331,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][334] = settr(333,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(333,0,333,0,0,"sub-sequence", 0, 2, 0);
	trans[0][333]	= settr(332,0,73,386,386,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][335]	= settr(334,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][337] = settr(336,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(336,0,336,0,0,"sub-sequence", 0, 2, 0);
	trans[0][336]	= settr(335,0,73,387,387,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][338]	= settr(337,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][340] = settr(339,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(339,0,339,0,0,"sub-sequence", 0, 2, 0);
	trans[0][339]	= settr(338,0,73,388,388,"CRM2BEG?6,2", 1, 504, 0);
	trans[0][341]	= settr(340,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][343] = settr(342,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(342,0,342,0,0,"sub-sequence", 0, 2, 0);
	trans[0][342]	= settr(341,0,634,389,389,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][344]	= settr(343,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][346] = settr(345,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(345,0,345,0,0,"sub-sequence", 0, 2, 0);
	trans[0][345]	= settr(344,0,634,390,390,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][347]	= settr(346,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][349] = settr(348,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(348,0,348,0,0,"sub-sequence", 0, 2, 0);
	trans[0][348]	= settr(347,0,634,391,391,"CRM2BEG?6,1", 1, 504, 0);
	trans[0][350]	= settr(349,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][397] = settr(396,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(396,2,354,0,0,"ATOMIC", 1, 2, 0);
	trans[0][354]	= settr(353,2,357,392,392,"((((PAY_bo.right==1)||(PAY_bo.oblig==1))||(PAY_bo.prohib==1)))", 1, 2, 0); /* m: 355 -> 357,0 */
	reached0[355] = 1;
	trans[0][355]	= settr(0,0,0,0,0,"PAY_bo.status = BF",0,0,0);
	T = trans[ 0][357] = settr(356,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(356,0,356,0,0,"sub-sequence", 1, 2, 0);
	trans[0][356]	= settr(355,2,390,393,393,"BEG2CRM!19,14", 1, 3, 0);
	T = trans[ 0][390] = settr(389,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(389,0,388,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][388] = settr(387,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(387,2,359,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(387,2,362,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(387,2,365,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(387,2,368,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(387,2,371,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(387,2,374,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(387,2,377,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(387,2,380,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(387,2,383,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(387,2,386,0,0,"IF", 1, 2, 0);
	T = trans[ 0][359] = settr(358,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(358,0,358,0,0,"sub-sequence", 1, 2, 0);
	trans[0][358]	= settr(357,2,360,394,394,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][360]	= settr(359,2,395,1,0,"(1)", 1, 2, 0);
	trans[0][389]	= settr(388,2,395,1,0,".(goto)", 1, 2, 0);
	T = trans[ 0][362] = settr(361,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(361,0,361,0,0,"sub-sequence", 1, 2, 0);
	trans[0][361]	= settr(360,2,363,395,395,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][363]	= settr(362,2,395,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][365] = settr(364,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(364,0,364,0,0,"sub-sequence", 1, 2, 0);
	trans[0][364]	= settr(363,2,366,396,396,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][366]	= settr(365,2,395,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][368] = settr(367,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(367,0,367,0,0,"sub-sequence", 1, 2, 0);
	trans[0][367]	= settr(366,2,369,397,397,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][369]	= settr(368,2,395,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][371] = settr(370,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(370,0,370,0,0,"sub-sequence", 1, 2, 0);
	trans[0][370]	= settr(369,4,73,398,398,"CRM2BEG?8,2", 1, 504, 0); /* m: 372 -> 73,0 */
	reached0[372] = 1;
	trans[0][372]	= settr(371,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][374] = settr(373,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(373,0,373,0,0,"sub-sequence", 1, 2, 0);
	trans[0][373]	= settr(372,4,73,399,399,"CRM2BEG?7,2", 1, 504, 0); /* m: 375 -> 73,0 */
	reached0[375] = 1;
	trans[0][375]	= settr(374,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][377] = settr(376,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(376,0,376,0,0,"sub-sequence", 1, 2, 0);
	trans[0][376]	= settr(375,4,73,400,400,"CRM2BEG?6,2", 1, 504, 0); /* m: 378 -> 73,0 */
	reached0[378] = 1;
	trans[0][378]	= settr(377,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][380] = settr(379,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(379,0,379,0,0,"sub-sequence", 1, 2, 0);
	trans[0][379]	= settr(378,4,634,401,401,"CRM2BEG?8,1", 1, 504, 0); /* m: 381 -> 634,0 */
	reached0[381] = 1;
	trans[0][381]	= settr(380,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[ 0][383] = settr(382,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(382,0,382,0,0,"sub-sequence", 1, 2, 0);
	trans[0][382]	= settr(381,4,634,402,402,"CRM2BEG?7,1", 1, 504, 0); /* m: 384 -> 634,0 */
	reached0[384] = 1;
	trans[0][384]	= settr(383,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[ 0][386] = settr(385,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(385,0,385,0,0,"sub-sequence", 1, 2, 0);
	trans[0][385]	= settr(384,4,634,403,403,"CRM2BEG?6,1", 1, 504, 0); /* m: 387 -> 634,0 */
	reached0[387] = 1;
	trans[0][387]	= settr(386,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[0][395] = settr(394,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(394,2,391,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(394,2,393,0,0,"IF", 1, 2, 0);
	trans[0][391]	= settr(390,0,634,404,404,"((numpaybizfail<2))", 1, 2, 0); /* m: 392 -> 634,0 */
	reached0[392] = 1;
	trans[0][392]	= settr(0,0,0,0,0,"numpaybizfail = (numpaybizfail+1)",0,0,0);
	trans[0][396]	= settr(395,0,634,405,405,".(goto)", 1, 2, 0);
	trans[0][393]	= settr(392,0,634,406,406,"((numpaybizfail==2))", 1, 2, 0); /* m: 394 -> 634,0 */
	reached0[394] = 1;
	trans[0][394]	= settr(0,0,0,0,0,"paybizfail = 1",0,0,0);
	trans[0][398]	= settr(397,0,399,407,0,"((((GETVOU_bo.right==1)||(GETVOU_bo.oblig==1))||(GETVOU_bo.prohib==1)))", 1, 2, 0);
	trans[0][399]	= settr(398,0,401,408,408,"GETVOU_bo.status = S", 1, 2, 0);
	T = trans[ 0][401] = settr(400,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(400,0,400,0,0,"sub-sequence", 0, 2, 0);
	trans[0][400]	= settr(399,0,434,409,409,"BEG2CRM!21,15", 1, 3, 0);
	T = trans[ 0][434] = settr(433,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(433,0,432,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][432] = settr(431,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(431,0,403,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(431,0,406,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(431,0,409,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(431,0,412,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(431,0,415,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(431,0,418,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(431,0,421,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(431,0,424,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(431,0,427,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(431,0,430,0,0,"IF", 0, 2, 0);
	T = trans[ 0][403] = settr(402,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(402,0,402,0,0,"sub-sequence", 0, 2, 0);
	trans[0][402]	= settr(401,0,404,410,410,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][404]	= settr(403,0,634,1,0,"(1)", 0, 2, 0);
	trans[0][433]	= settr(432,0,634,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][406] = settr(405,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(405,0,405,0,0,"sub-sequence", 0, 2, 0);
	trans[0][405]	= settr(404,0,407,411,411,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][407]	= settr(406,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][409] = settr(408,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(408,0,408,0,0,"sub-sequence", 0, 2, 0);
	trans[0][408]	= settr(407,0,410,412,412,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][410]	= settr(409,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][412] = settr(411,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(411,0,411,0,0,"sub-sequence", 0, 2, 0);
	trans[0][411]	= settr(410,0,413,413,413,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][413]	= settr(412,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][415] = settr(414,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(414,0,414,0,0,"sub-sequence", 0, 2, 0);
	trans[0][414]	= settr(413,0,73,414,414,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][416]	= settr(415,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][418] = settr(417,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(417,0,417,0,0,"sub-sequence", 0, 2, 0);
	trans[0][417]	= settr(416,0,73,415,415,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][419]	= settr(418,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][421] = settr(420,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(420,0,420,0,0,"sub-sequence", 0, 2, 0);
	trans[0][420]	= settr(419,0,73,416,416,"CRM2BEG?6,2", 1, 504, 0);
	trans[0][422]	= settr(421,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][424] = settr(423,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(423,0,423,0,0,"sub-sequence", 0, 2, 0);
	trans[0][423]	= settr(422,0,634,417,417,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][425]	= settr(424,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][427] = settr(426,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(426,0,426,0,0,"sub-sequence", 0, 2, 0);
	trans[0][426]	= settr(425,0,634,418,418,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][428]	= settr(427,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][430] = settr(429,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(429,0,429,0,0,"sub-sequence", 0, 2, 0);
	trans[0][429]	= settr(428,0,634,419,419,"CRM2BEG?6,1", 1, 504, 0);
	trans[0][431]	= settr(430,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][478] = settr(477,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(477,2,435,0,0,"ATOMIC", 1, 2, 0);
	trans[0][435]	= settr(434,2,438,420,420,"((((GETVOU_bo.right==1)||(GETVOU_bo.oblig==1))||(GETVOU_bo.prohib==1)))", 1, 2, 0); /* m: 436 -> 438,0 */
	reached0[436] = 1;
	trans[0][436]	= settr(0,0,0,0,0,"GETVOU_bo.status = TO",0,0,0);
	T = trans[ 0][438] = settr(437,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(437,0,437,0,0,"sub-sequence", 1, 2, 0);
	trans[0][437]	= settr(436,2,471,421,421,"BEG2CRM!21,12", 1, 3, 0);
	T = trans[ 0][471] = settr(470,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(470,0,469,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][469] = settr(468,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(468,2,440,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(468,2,443,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(468,2,446,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(468,2,449,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(468,2,452,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(468,2,455,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(468,2,458,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(468,2,461,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(468,2,464,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(468,2,467,0,0,"IF", 1, 2, 0);
	T = trans[ 0][440] = settr(439,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(439,0,439,0,0,"sub-sequence", 1, 2, 0);
	trans[0][439]	= settr(438,2,441,422,422,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][441]	= settr(440,2,476,1,0,"(1)", 1, 2, 0);
	trans[0][470]	= settr(469,2,476,1,0,".(goto)", 1, 2, 0);
	T = trans[ 0][443] = settr(442,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(442,0,442,0,0,"sub-sequence", 1, 2, 0);
	trans[0][442]	= settr(441,2,444,423,423,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][444]	= settr(443,2,476,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][446] = settr(445,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(445,0,445,0,0,"sub-sequence", 1, 2, 0);
	trans[0][445]	= settr(444,2,447,424,424,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][447]	= settr(446,2,476,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][449] = settr(448,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(448,0,448,0,0,"sub-sequence", 1, 2, 0);
	trans[0][448]	= settr(447,2,450,425,425,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][450]	= settr(449,2,476,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][452] = settr(451,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(451,0,451,0,0,"sub-sequence", 1, 2, 0);
	trans[0][451]	= settr(450,4,73,426,426,"CRM2BEG?8,2", 1, 504, 0); /* m: 453 -> 73,0 */
	reached0[453] = 1;
	trans[0][453]	= settr(452,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][455] = settr(454,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(454,0,454,0,0,"sub-sequence", 1, 2, 0);
	trans[0][454]	= settr(453,4,73,427,427,"CRM2BEG?7,2", 1, 504, 0); /* m: 456 -> 73,0 */
	reached0[456] = 1;
	trans[0][456]	= settr(455,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][458] = settr(457,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(457,0,457,0,0,"sub-sequence", 1, 2, 0);
	trans[0][457]	= settr(456,4,73,428,428,"CRM2BEG?6,2", 1, 504, 0); /* m: 459 -> 73,0 */
	reached0[459] = 1;
	trans[0][459]	= settr(458,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][461] = settr(460,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(460,0,460,0,0,"sub-sequence", 1, 2, 0);
	trans[0][460]	= settr(459,4,634,429,429,"CRM2BEG?8,1", 1, 504, 0); /* m: 462 -> 634,0 */
	reached0[462] = 1;
	trans[0][462]	= settr(461,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[ 0][464] = settr(463,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(463,0,463,0,0,"sub-sequence", 1, 2, 0);
	trans[0][463]	= settr(462,4,634,430,430,"CRM2BEG?7,1", 1, 504, 0); /* m: 465 -> 634,0 */
	reached0[465] = 1;
	trans[0][465]	= settr(464,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[ 0][467] = settr(466,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(466,0,466,0,0,"sub-sequence", 1, 2, 0);
	trans[0][466]	= settr(465,4,634,431,431,"CRM2BEG?6,1", 1, 504, 0); /* m: 468 -> 634,0 */
	reached0[468] = 1;
	trans[0][468]	= settr(467,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[0][476] = settr(475,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(475,2,472,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(475,2,474,0,0,"IF", 1, 2, 0);
	trans[0][472]	= settr(471,0,634,432,432,"((numgetvoubizfail<2))", 1, 2, 0); /* m: 473 -> 634,0 */
	reached0[473] = 1;
	trans[0][473]	= settr(0,0,0,0,0,"numgetvoubizfail = (numgetvoubizfail+1)",0,0,0);
	trans[0][477]	= settr(476,0,634,433,433,".(goto)", 1, 2, 0);
	trans[0][474]	= settr(473,0,634,434,434,"((numgetvoubizfail==2))", 1, 2, 0); /* m: 475 -> 634,0 */
	reached0[475] = 1;
	trans[0][475]	= settr(0,0,0,0,0,"getvoubizfail = 1",0,0,0);
	trans[0][479]	= settr(478,0,480,435,0,"((((CANC_bo.right==1)||(CANC_bo.oblig==1))||(CANC_bo.prohib==1)))", 1, 2, 0);
	trans[0][480]	= settr(479,0,482,436,436,"CANC_bo.status = S", 1, 2, 0);
	T = trans[ 0][482] = settr(481,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(481,0,481,0,0,"sub-sequence", 0, 2, 0);
	trans[0][481]	= settr(480,0,515,437,437,"BEG2CRM!20,15", 1, 3, 0);
	T = trans[ 0][515] = settr(514,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(514,0,513,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][513] = settr(512,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(512,0,484,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(512,0,487,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(512,0,490,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(512,0,493,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(512,0,496,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(512,0,499,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(512,0,502,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(512,0,505,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(512,0,508,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(512,0,511,0,0,"IF", 0, 2, 0);
	T = trans[ 0][484] = settr(483,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(483,0,483,0,0,"sub-sequence", 0, 2, 0);
	trans[0][483]	= settr(482,0,485,438,438,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][485]	= settr(484,0,634,1,0,"(1)", 0, 2, 0);
	trans[0][514]	= settr(513,0,634,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][487] = settr(486,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(486,0,486,0,0,"sub-sequence", 0, 2, 0);
	trans[0][486]	= settr(485,0,488,439,439,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][488]	= settr(487,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][490] = settr(489,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(489,0,489,0,0,"sub-sequence", 0, 2, 0);
	trans[0][489]	= settr(488,0,491,440,440,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][491]	= settr(490,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][493] = settr(492,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(492,0,492,0,0,"sub-sequence", 0, 2, 0);
	trans[0][492]	= settr(491,0,494,441,441,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][494]	= settr(493,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][496] = settr(495,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(495,0,495,0,0,"sub-sequence", 0, 2, 0);
	trans[0][495]	= settr(494,0,73,442,442,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][497]	= settr(496,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][499] = settr(498,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(498,0,498,0,0,"sub-sequence", 0, 2, 0);
	trans[0][498]	= settr(497,0,73,443,443,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][500]	= settr(499,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][502] = settr(501,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(501,0,501,0,0,"sub-sequence", 0, 2, 0);
	trans[0][501]	= settr(500,0,73,444,444,"CRM2BEG?6,2", 1, 504, 0);
	trans[0][503]	= settr(502,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][505] = settr(504,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(504,0,504,0,0,"sub-sequence", 0, 2, 0);
	trans[0][504]	= settr(503,0,634,445,445,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][506]	= settr(505,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][508] = settr(507,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(507,0,507,0,0,"sub-sequence", 0, 2, 0);
	trans[0][507]	= settr(506,0,634,446,446,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][509]	= settr(508,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][511] = settr(510,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(510,0,510,0,0,"sub-sequence", 0, 2, 0);
	trans[0][510]	= settr(509,0,634,447,447,"CRM2BEG?6,1", 1, 504, 0);
	trans[0][512]	= settr(511,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][559] = settr(558,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(558,2,516,0,0,"ATOMIC", 1, 2, 0);
	trans[0][516]	= settr(515,2,519,448,448,"((((CANC_bo.right==1)||(CANC_bo.oblig==1))||(CANC_bo.prohib==1)))", 1, 2, 0); /* m: 517 -> 519,0 */
	reached0[517] = 1;
	trans[0][517]	= settr(0,0,0,0,0,"CANC_bo.status = BF",0,0,0);
	T = trans[ 0][519] = settr(518,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(518,0,518,0,0,"sub-sequence", 1, 2, 0);
	trans[0][518]	= settr(517,2,552,449,449,"BEG2CRM!20,14", 1, 3, 0);
	T = trans[ 0][552] = settr(551,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(551,0,550,0,0,"sub-sequence", 1, 2, 0);
	T = trans[0][550] = settr(549,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(549,2,521,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(549,2,524,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(549,2,527,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(549,2,530,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(549,2,533,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(549,2,536,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(549,2,539,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(549,2,542,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(549,2,545,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(549,2,548,0,0,"IF", 1, 2, 0);
	T = trans[ 0][521] = settr(520,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(520,0,520,0,0,"sub-sequence", 1, 2, 0);
	trans[0][520]	= settr(519,2,522,450,450,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][522]	= settr(521,2,557,1,0,"(1)", 1, 2, 0);
	trans[0][551]	= settr(550,2,557,1,0,".(goto)", 1, 2, 0);
	T = trans[ 0][524] = settr(523,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(523,0,523,0,0,"sub-sequence", 1, 2, 0);
	trans[0][523]	= settr(522,2,525,451,451,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][525]	= settr(524,2,557,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][527] = settr(526,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(526,0,526,0,0,"sub-sequence", 1, 2, 0);
	trans[0][526]	= settr(525,2,528,452,452,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][528]	= settr(527,2,557,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][530] = settr(529,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(529,0,529,0,0,"sub-sequence", 1, 2, 0);
	trans[0][529]	= settr(528,2,531,453,453,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][531]	= settr(530,2,557,1,0,"(1)", 1, 2, 0);
	T = trans[ 0][533] = settr(532,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(532,0,532,0,0,"sub-sequence", 1, 2, 0);
	trans[0][532]	= settr(531,4,73,454,454,"CRM2BEG?8,2", 1, 504, 0); /* m: 534 -> 73,0 */
	reached0[534] = 1;
	trans[0][534]	= settr(533,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][536] = settr(535,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(535,0,535,0,0,"sub-sequence", 1, 2, 0);
	trans[0][535]	= settr(534,4,73,455,455,"CRM2BEG?7,2", 1, 504, 0); /* m: 537 -> 73,0 */
	reached0[537] = 1;
	trans[0][537]	= settr(536,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][539] = settr(538,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(538,0,538,0,0,"sub-sequence", 1, 2, 0);
	trans[0][538]	= settr(537,4,73,456,456,"CRM2BEG?6,2", 1, 504, 0); /* m: 540 -> 73,0 */
	reached0[540] = 1;
	trans[0][540]	= settr(539,0,73,1,0,"goto BEGIN_INIT", 1, 2, 0);
	T = trans[ 0][542] = settr(541,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(541,0,541,0,0,"sub-sequence", 1, 2, 0);
	trans[0][541]	= settr(540,4,634,457,457,"CRM2BEG?8,1", 1, 504, 0); /* m: 543 -> 634,0 */
	reached0[543] = 1;
	trans[0][543]	= settr(542,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[ 0][545] = settr(544,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(544,0,544,0,0,"sub-sequence", 1, 2, 0);
	trans[0][544]	= settr(543,4,634,458,458,"CRM2BEG?7,1", 1, 504, 0); /* m: 546 -> 634,0 */
	reached0[546] = 1;
	trans[0][546]	= settr(545,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[ 0][548] = settr(547,0,0,0,0,"sub-sequence", 1, 2, 0);
	T->nxt	= settr(547,0,547,0,0,"sub-sequence", 1, 2, 0);
	trans[0][547]	= settr(546,4,634,459,459,"CRM2BEG?6,1", 1, 504, 0); /* m: 549 -> 634,0 */
	reached0[549] = 1;
	trans[0][549]	= settr(548,0,634,1,0,"goto END_INIT", 1, 2, 0);
	T = trans[0][557] = settr(556,2,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(556,2,553,0,0,"IF", 1, 2, 0);
	    T->nxt	= settr(556,2,555,0,0,"IF", 1, 2, 0);
	trans[0][553]	= settr(552,0,634,460,460,"((numcancbizfail<2))", 1, 2, 0); /* m: 554 -> 634,0 */
	reached0[554] = 1;
	trans[0][554]	= settr(0,0,0,0,0,"numcancbizfail = (numcancbizfail+1)",0,0,0);
	trans[0][558]	= settr(557,0,634,461,461,".(goto)", 1, 2, 0);
	trans[0][555]	= settr(554,0,634,462,462,"((numcancbizfail==2))", 1, 2, 0); /* m: 556 -> 634,0 */
	reached0[556] = 1;
	trans[0][556]	= settr(0,0,0,0,0,"cancbizfail = 1",0,0,0);
	trans[0][560]	= settr(559,0,561,463,0,"((((REJCONFTO_bo.right==1)||(REJCONFTO_bo.oblig==1))||(REJCONFTO_bo.prohib==1)))", 1, 2, 0);
	trans[0][561]	= settr(560,0,563,464,464,"REJCONFTO_bo.status = S", 1, 2, 0);
	T = trans[ 0][563] = settr(562,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(562,0,562,0,0,"sub-sequence", 0, 2, 0);
	trans[0][562]	= settr(561,0,596,465,465,"BEG2CRM!22,15", 1, 3, 0);
	T = trans[ 0][596] = settr(595,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(595,0,594,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][594] = settr(593,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(593,0,565,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(593,0,568,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(593,0,571,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(593,0,574,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(593,0,577,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(593,0,580,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(593,0,583,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(593,0,586,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(593,0,589,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(593,0,592,0,0,"IF", 0, 2, 0);
	T = trans[ 0][565] = settr(564,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(564,0,564,0,0,"sub-sequence", 0, 2, 0);
	trans[0][564]	= settr(563,0,566,466,466,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][566]	= settr(565,0,634,1,0,"(1)", 0, 2, 0);
	trans[0][595]	= settr(594,0,634,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][568] = settr(567,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(567,0,567,0,0,"sub-sequence", 0, 2, 0);
	trans[0][567]	= settr(566,0,569,467,467,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][569]	= settr(568,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][571] = settr(570,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(570,0,570,0,0,"sub-sequence", 0, 2, 0);
	trans[0][570]	= settr(569,0,572,468,468,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][572]	= settr(571,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][574] = settr(573,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(573,0,573,0,0,"sub-sequence", 0, 2, 0);
	trans[0][573]	= settr(572,0,575,469,469,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][575]	= settr(574,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][577] = settr(576,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(576,0,576,0,0,"sub-sequence", 0, 2, 0);
	trans[0][576]	= settr(575,0,73,470,470,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][578]	= settr(577,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][580] = settr(579,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(579,0,579,0,0,"sub-sequence", 0, 2, 0);
	trans[0][579]	= settr(578,0,73,471,471,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][581]	= settr(580,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][583] = settr(582,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(582,0,582,0,0,"sub-sequence", 0, 2, 0);
	trans[0][582]	= settr(581,0,73,472,472,"CRM2BEG?6,2", 1, 504, 0);
	trans[0][584]	= settr(583,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][586] = settr(585,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(585,0,585,0,0,"sub-sequence", 0, 2, 0);
	trans[0][585]	= settr(584,0,634,473,473,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][587]	= settr(586,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][589] = settr(588,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(588,0,588,0,0,"sub-sequence", 0, 2, 0);
	trans[0][588]	= settr(587,0,634,474,474,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][590]	= settr(589,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][592] = settr(591,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(591,0,591,0,0,"sub-sequence", 0, 2, 0);
	trans[0][591]	= settr(590,0,634,475,475,"CRM2BEG?6,1", 1, 504, 0);
	trans[0][593]	= settr(592,0,634,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][597]	= settr(596,0,598,476,0,"((((PAYCANCTO_bo.right==1)||(PAYCANCTO_bo.oblig==1))||(PAYCANCTO_bo.prohib==1)))", 1, 2, 0);
	trans[0][598]	= settr(597,0,600,477,477,"PAYCANCTO_bo.status = S", 1, 2, 0);
	T = trans[ 0][600] = settr(599,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(599,0,599,0,0,"sub-sequence", 0, 2, 0);
	trans[0][599]	= settr(598,0,633,478,478,"BEG2CRM!23,15", 1, 3, 0);
	T = trans[ 0][633] = settr(632,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(632,0,631,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][631] = settr(630,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,602,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,605,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,608,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,611,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,614,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,617,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,620,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,623,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(630,0,626,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(630,0,629,0,0,"IF", 0, 2, 0);
	T = trans[ 0][602] = settr(601,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(601,0,601,0,0,"sub-sequence", 0, 2, 0);
	trans[0][601]	= settr(600,0,603,479,479,"CRM2BEG?8,4", 1, 504, 0);
	trans[0][603]	= settr(602,0,634,1,0,"(1)", 0, 2, 0);
	trans[0][632]	= settr(631,0,634,1,0,".(goto)", 0, 2, 0);
	T = trans[ 0][605] = settr(604,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(604,0,604,0,0,"sub-sequence", 0, 2, 0);
	trans[0][604]	= settr(603,0,606,480,480,"CRM2BEG?7,4", 1, 504, 0);
	trans[0][606]	= settr(605,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][608] = settr(607,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(607,0,607,0,0,"sub-sequence", 0, 2, 0);
	trans[0][607]	= settr(606,0,609,481,481,"CRM2BEG?6,4", 1, 504, 0);
	trans[0][609]	= settr(608,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][611] = settr(610,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(610,0,610,0,0,"sub-sequence", 0, 2, 0);
	trans[0][610]	= settr(609,0,612,482,482,"CRM2BEG?5,4", 1, 504, 0);
	trans[0][612]	= settr(611,0,634,1,0,"(1)", 0, 2, 0);
	T = trans[ 0][614] = settr(613,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(613,0,613,0,0,"sub-sequence", 0, 2, 0);
	trans[0][613]	= settr(612,0,73,483,483,"CRM2BEG?8,2", 1, 504, 0);
	trans[0][615]	= settr(614,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][617] = settr(616,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(616,0,616,0,0,"sub-sequence", 0, 2, 0);
	trans[0][616]	= settr(615,0,73,484,484,"CRM2BEG?7,2", 1, 504, 0);
	trans[0][618]	= settr(617,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][620] = settr(619,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(619,0,619,0,0,"sub-sequence", 0, 2, 0);
	trans[0][619]	= settr(618,0,73,485,485,"CRM2BEG?6,2", 1, 504, 0);
	trans[0][621]	= settr(620,0,73,1,0,"goto BEGIN_INIT", 0, 2, 0);
	T = trans[ 0][623] = settr(622,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(622,0,622,0,0,"sub-sequence", 0, 2, 0);
	trans[0][622]	= settr(621,0,634,486,486,"CRM2BEG?8,1", 1, 504, 0);
	trans[0][624]	= settr(623,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][626] = settr(625,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(625,0,625,0,0,"sub-sequence", 0, 2, 0);
	trans[0][625]	= settr(624,0,634,487,487,"CRM2BEG?7,1", 1, 504, 0);
	trans[0][627]	= settr(626,0,634,1,0,"goto END_INIT", 0, 2, 0);
	T = trans[ 0][629] = settr(628,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(628,0,628,0,0,"sub-sequence", 0, 2, 0);
	trans[0][628]	= settr(627,0,634,488,488,"CRM2BEG?6,1", 1, 504, 0);
	trans[0][630]	= settr(629,0,634,1,0,"goto END_INIT", 0, 2, 0);
	trans[0][636]	= settr(635,0,637,1,0,"break", 0, 2, 0);
	trans[0][637]	= settr(636,0,0,489,489,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
