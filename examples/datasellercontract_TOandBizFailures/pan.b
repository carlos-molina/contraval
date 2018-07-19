	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM never_0 */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 6: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC CRM */
;
		;
		;
		;
		
	case 11: // STATE 3
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 13: // STATE 5
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 15: // STATE 7
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 17: // STATE 9
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		
	case 19: // STATE 14
		goto R999;

	case 20: // STATE 23
		;
		now.BUYRQ_bo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 23: // STATE 27
		;
		now.REJ_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 26: // STATE 31
		;
		now.CONF_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 29: // STATE 35
		;
		now.REJCONFTO_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 32: // STATE 39
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 40
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		;
		
	case 35: // STATE 44
		goto R999;
;
		;
		
	case 37: // STATE 54
		;
		now.BuyRqFailBefore = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 39: // STATE 56
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 57
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 43: // STATE 61
		;
		now.BUYRQ_bo.right = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 46: // STATE 65
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 67
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 68
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 70
		;
		now.STOREexTrace = trpt->bup.oval;
		;
		goto R999;
;
		
	case 50: // STATE 71
		goto R999;

	case 51: // STATE 80
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 81
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 53: // STATE 87
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 55: // STATE 93
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 57: // STATE 95
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 59: // STATE 97
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 61: // STATE 99
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		
	case 63: // STATE 104
		goto R999;

	case 64: // STATE 114
		;
		now.REJ_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 65: // STATE 118
		;
		now.CONF_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 122
		;
		now.REJCONFTO_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 128
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 68: // STATE 131
		;
		now.STOREexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 69: // STATE 141
		;
		now.STOREexTrace = trpt->bup.oval;
		;
		goto R999;

	case 70: // STATE 142
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 71: // STATE 202
		;
		now.buyrj = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		
	case 73: // STATE 146
		goto R999;

	case 74: // STATE 158
		;
		now.STOREexTrace = trpt->bup.ovals[1];
		now.RejFailBefore = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 75: // STATE 159
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		
	case 76: // STATE 161
		goto R999;

	case 77: // STATE 163
		;
		now.REJ_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 78: // STATE 167
		;
		now.CONF_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 79: // STATE 171
		;
		now.REJCONFTO_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 177
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 81: // STATE 180
		;
		now.STOREexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 82: // STATE 190
		;
		now.STOREexTrace = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 191
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 84: // STATE 197
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 86: // STATE 205
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 88: // STATE 207
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 90: // STATE 209
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 92: // STATE 211
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		
	case 94: // STATE 216
		goto R999;

	case 95: // STATE 226
		;
		now.REJ_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 98: // STATE 230
		;
		now.CONF_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 101: // STATE 234
		;
		now.REJCONFTO_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 104: // STATE 238
		;
		now.PAY_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 107: // STATE 242
		;
		now.CANC_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 110: // STATE 246
		;
		now.PAYCANCTO_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 113: // STATE 250
		;
		now.STOREexTrace = trpt->bup.oval;
		;
		goto R999;

	case 114: // STATE 251
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		;
		
	case 116: // STATE 255
		goto R999;
;
		;
		
	case 118: // STATE 265
		;
		now.ConfFailBefore = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 120: // STATE 267
		;
		now.STOREexTrace = trpt->bup.oval;
		;
		goto R999;

	case 121: // STATE 268
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 124: // STATE 272
		;
		now.REJ_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 127: // STATE 276
		;
		now.CONF_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 130: // STATE 280
		;
		now.REJCONFTO_bo.oblig = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 133: // STATE 284
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 134: // STATE 286
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 135: // STATE 287
		;
		now.cntttr = trpt->bup.oval;
		;
		goto R999;

	case 136: // STATE 289
		;
		now.STOREexTrace = trpt->bup.oval;
		;
		goto R999;
;
		
	case 137: // STATE 290
		goto R999;

	case 138: // STATE 299
		;
		now.STOREexTrace = trpt->bup.oval;
		;
		goto R999;

	case 139: // STATE 300
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 140: // STATE 306
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 142: // STATE 312
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 144: // STATE 314
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 146: // STATE 316
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 148: // STATE 318
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		
	case 150: // STATE 323
		goto R999;

	case 151: // STATE 332
		;
		now.PAY_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 152: // STATE 336
		;
		now.CANC_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 153: // STATE 340
		;
		now.PAYCANCTO_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 154: // STATE 349
		;
		now.BUYERexTrace = trpt->bup.ovals[2];
		now.payNotification = trpt->bup.ovals[1];
		now.GETVOU_bo.right = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 155: // STATE 350
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 156: // STATE 352
		;
		now.PAY_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 157: // STATE 356
		;
		now.CANC_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 158: // STATE 360
		;
		now.PAYCANCTO_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 159: // STATE 369
		;
		now.BUYERexTrace = trpt->bup.ovals[2];
		now.payNotification = trpt->bup.ovals[1];
		now.GETVOU_bo.right = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 160: // STATE 370
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 161: // STATE 432
		;
		now.pay = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		
	case 163: // STATE 376
		goto R999;

	case 164: // STATE 388
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.PayFailBefore = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 165: // STATE 389
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		
	case 166: // STATE 391
		goto R999;

	case 167: // STATE 393
		;
		now.PAY_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 168: // STATE 397
		;
		now.CANC_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 169: // STATE 401
		;
		now.PAYCANCTO_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 170: // STATE 407
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 171: // STATE 410
		;
		now.STOREexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 172: // STATE 420
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 173: // STATE 421
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 174: // STATE 427
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 176: // STATE 435
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 178: // STATE 437
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 180: // STATE 439
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 182: // STATE 441
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		;
		
	case 185: // STATE 447
		goto R999;

	case 186: // STATE 465
		;
		now.GETVOU_bo.right = trpt->bup.oval;
		;
		goto R999;

	case 187: // STATE 471
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 188: // STATE 474
		;
		now.STOREexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 189: // STATE 484
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 190: // STATE 485
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		;
		
	case 192: // STATE 488
		goto R999;

	case 193: // STATE 498
		;
		now.GETVOU_bo.right = trpt->bup.oval;
		;
		goto R999;

	case 194: // STATE 504
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 195: // STATE 507
		;
		now.STOREexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 196: // STATE 517
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 197: // STATE 518
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 198: // STATE 597
		;
		getvou = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		
	case 200: // STATE 524
		goto R999;

	case 201: // STATE 536
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.GetVouFailBefore = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 202: // STATE 537
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		
	case 203: // STATE 539
		goto R999;

	case 204: // STATE 541
		;
		now.GETVOU_bo.right = trpt->bup.oval;
		;
		goto R999;

	case 205: // STATE 547
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 206: // STATE 550
		;
		now.STOREexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 207: // STATE 560
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 208: // STATE 561
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		;
		;
		
	case 211: // STATE 568
		;
		now.GETVOU_bo.right = trpt->bup.oval;
		;
		goto R999;

	case 212: // STATE 574
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 213: // STATE 577
		;
		now.STOREexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 214: // STATE 587
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 215: // STATE 588
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 216: // STATE 592
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 218: // STATE 600
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 220: // STATE 602
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 222: // STATE 604
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 224: // STATE 606
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		
	case 226: // STATE 611
		goto R999;

	case 227: // STATE 620
		;
		now.PAY_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 228: // STATE 624
		;
		now.CANC_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 229: // STATE 628
		;
		now.PAYCANCTO_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 230: // STATE 634
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 231: // STATE 637
		;
		now.STOREexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 232: // STATE 647
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 233: // STATE 648
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 234: // STATE 708
		;
		now.canc = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		
	case 236: // STATE 652
		goto R999;

	case 237: // STATE 664
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.CancFailBefore = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 238: // STATE 665
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		
	case 239: // STATE 667
		goto R999;

	case 240: // STATE 669
		;
		now.PAY_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 241: // STATE 673
		;
		now.CANC_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 242: // STATE 677
		;
		now.PAYCANCTO_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 243: // STATE 683
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 244: // STATE 686
		;
		now.STOREexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 245: // STATE 696
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 246: // STATE 697
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 247: // STATE 703
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 249: // STATE 711
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 251: // STATE 713
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 253: // STATE 715
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 255: // STATE 717
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		
	case 257: // STATE 722
		goto R999;

	case 258: // STATE 731
		;
		now.REJ_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 259: // STATE 735
		;
		now.CONF_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 260: // STATE 739
		;
		now.REJCONFTO_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 261: // STATE 745
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 262: // STATE 748
		;
		now.STOREexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 263: // STATE 758
		;
		now.STOREexTrace = trpt->bup.oval;
		;
		goto R999;

	case 264: // STATE 759
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 265: // STATE 768
		;
		now.rejconfto = trpt->bup.oval;
		;
		goto R999;

	case 266: // STATE 763
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;
;
		;
		
	case 268: // STATE 771
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 270: // STATE 773
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 272: // STATE 775
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 274: // STATE 777
		;
		XX = 1;
		unrecv(now.BEG2CRM, XX-1, 0, trpt->bup.ovals[0], 1);
		unrecv(now.BEG2CRM, XX-1, 1, trpt->bup.ovals[1], 0);
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		
	case 276: // STATE 782
		goto R999;

	case 277: // STATE 791
		;
		now.PAY_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 278: // STATE 795
		;
		now.CANC_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 279: // STATE 799
		;
		now.PAYCANCTO_bo.oblig = trpt->bup.oval;
		;
		goto R999;

	case 280: // STATE 805
		;
		now.BUYERexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 281: // STATE 808
		;
		now.STOREexTrace = trpt->bup.ovals[1];
		now.cntttr = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 282: // STATE 818
		;
		now.BUYERexTrace = trpt->bup.oval;
		;
		goto R999;

	case 283: // STATE 819
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 284: // STATE 828
		;
		now.paycancto = trpt->bup.oval;
		;
		goto R999;

	case 285: // STATE 823
		;
		_m = unsend(now.CRM2BEG);
		;
		goto R999;

	case 286: // STATE 833
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC BEG */
	case 287: // STATE 8
		sv_restor();
		goto R999;
	case 288: // STATE 17
		sv_restor();
		goto R999;
	case 289: // STATE 26
		sv_restor();
		goto R999;
	case 290: // STATE 35
		sv_restor();
		goto R999;
	case 291: // STATE 44
		sv_restor();
		goto R999;
	case 292: // STATE 53
		sv_restor();
		goto R999;
	case 293: // STATE 62
		sv_restor();
		goto R999;
	case 294: // STATE 71
		sv_restor();
		goto R999;
;
		;
		
	case 296: // STATE 75
		;
		now.BUYRQ_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 297: // STATE 76
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 298: // STATE 78
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 299: // STATE 81
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 300: // STATE 84
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 301: // STATE 87
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 302: // STATE 90
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 303: // STATE 93
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 304: // STATE 96
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 305: // STATE 99
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 306: // STATE 102
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 307: // STATE 105
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 308: // STATE 112
		;
		now.BUYRQ_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 309: // STATE 113
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 310: // STATE 115
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 311: // STATE 118
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 312: // STATE 121
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 313: // STATE 124
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 314: // STATE 127
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 315: // STATE 130
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 316: // STATE 133
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 317: // STATE 136
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 318: // STATE 139
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 319: // STATE 142
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 320: // STATE 149
		;
		((P0 *)this)->numbuyreqbizfail = trpt->bup.oval;
		;
		goto R999;
;
		
	case 321: // STATE 153
		goto R999;

	case 322: // STATE 151
		;
		now.buyreqbizfail = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 324: // STATE 156
		;
		now.REJ_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 325: // STATE 157
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 326: // STATE 159
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 327: // STATE 162
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 328: // STATE 165
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 329: // STATE 168
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 330: // STATE 171
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 331: // STATE 174
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 332: // STATE 177
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 333: // STATE 180
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 334: // STATE 183
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 335: // STATE 186
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 336: // STATE 193
		;
		now.REJ_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 337: // STATE 194
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 338: // STATE 196
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 339: // STATE 199
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 340: // STATE 202
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 341: // STATE 205
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 342: // STATE 208
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 343: // STATE 211
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 344: // STATE 214
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 345: // STATE 217
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 346: // STATE 220
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 347: // STATE 223
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 348: // STATE 230
		;
		((P0 *)this)->numrejbizfail = trpt->bup.oval;
		;
		goto R999;
;
		
	case 349: // STATE 234
		goto R999;

	case 350: // STATE 232
		;
		now.rejbizfail = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 352: // STATE 237
		;
		now.CONF_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 353: // STATE 238
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 354: // STATE 240
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 355: // STATE 243
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 356: // STATE 246
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 357: // STATE 249
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 358: // STATE 252
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 359: // STATE 255
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 360: // STATE 258
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 361: // STATE 261
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 362: // STATE 264
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 363: // STATE 267
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 364: // STATE 274
		;
		now.CONF_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 365: // STATE 275
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 366: // STATE 277
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 367: // STATE 280
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 368: // STATE 283
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 369: // STATE 286
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 370: // STATE 289
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 371: // STATE 292
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 372: // STATE 295
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 373: // STATE 298
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 374: // STATE 301
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 375: // STATE 304
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 376: // STATE 311
		;
		((P0 *)this)->numconfbizfail = trpt->bup.oval;
		;
		goto R999;
;
		
	case 377: // STATE 315
		goto R999;

	case 378: // STATE 313
		;
		now.confbizfail = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 380: // STATE 318
		;
		now.PAY_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 381: // STATE 319
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 382: // STATE 321
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 383: // STATE 324
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 384: // STATE 327
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 385: // STATE 330
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 386: // STATE 333
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 387: // STATE 336
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 388: // STATE 339
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 389: // STATE 342
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 390: // STATE 345
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 391: // STATE 348
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 392: // STATE 355
		;
		now.PAY_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 393: // STATE 356
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 394: // STATE 358
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 395: // STATE 361
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 396: // STATE 364
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 397: // STATE 367
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 398: // STATE 370
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 399: // STATE 373
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 400: // STATE 376
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 401: // STATE 379
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 402: // STATE 382
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 403: // STATE 385
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 404: // STATE 392
		;
		((P0 *)this)->numpaybizfail = trpt->bup.oval;
		;
		goto R999;
;
		
	case 405: // STATE 396
		goto R999;

	case 406: // STATE 394
		;
		now.paybizfail = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 408: // STATE 399
		;
		now.GETVOU_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 409: // STATE 400
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 410: // STATE 402
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 411: // STATE 405
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 412: // STATE 408
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 413: // STATE 411
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 414: // STATE 414
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 415: // STATE 417
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 416: // STATE 420
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 417: // STATE 423
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 418: // STATE 426
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 419: // STATE 429
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 420: // STATE 436
		;
		now.GETVOU_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 421: // STATE 437
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 422: // STATE 439
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 423: // STATE 442
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 424: // STATE 445
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 425: // STATE 448
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 426: // STATE 451
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 427: // STATE 454
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 428: // STATE 457
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 429: // STATE 460
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 430: // STATE 463
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 431: // STATE 466
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 432: // STATE 473
		;
		((P0 *)this)->numgetvoubizfail = trpt->bup.oval;
		;
		goto R999;
;
		
	case 433: // STATE 477
		goto R999;

	case 434: // STATE 475
		;
		now.getvoubizfail = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 436: // STATE 480
		;
		now.CANC_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 437: // STATE 481
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 438: // STATE 483
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 439: // STATE 486
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 440: // STATE 489
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 441: // STATE 492
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 442: // STATE 495
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 443: // STATE 498
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 444: // STATE 501
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 445: // STATE 504
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 446: // STATE 507
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 447: // STATE 510
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 448: // STATE 517
		;
		now.CANC_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 449: // STATE 518
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 450: // STATE 520
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 451: // STATE 523
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 452: // STATE 526
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 453: // STATE 529
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 454: // STATE 532
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 455: // STATE 535
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 456: // STATE 538
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 457: // STATE 541
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 458: // STATE 544
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 459: // STATE 547
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 460: // STATE 554
		;
		((P0 *)this)->numcancbizfail = trpt->bup.oval;
		;
		goto R999;
;
		
	case 461: // STATE 558
		goto R999;

	case 462: // STATE 556
		;
		now.cancbizfail = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 464: // STATE 561
		;
		now.REJCONFTO_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 465: // STATE 562
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 466: // STATE 564
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 467: // STATE 567
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 468: // STATE 570
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 469: // STATE 573
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 470: // STATE 576
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 471: // STATE 579
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 472: // STATE 582
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 473: // STATE 585
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 474: // STATE 588
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 475: // STATE 591
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;
;
		;
		
	case 477: // STATE 598
		;
		now.PAYCANCTO_bo.status = trpt->bup.oval;
		;
		goto R999;

	case 478: // STATE 599
		;
		_m = unsend(now.BEG2CRM);
		;
		goto R999;

	case 479: // STATE 601
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 480: // STATE 604
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 481: // STATE 607
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 482: // STATE 610
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 5, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 4, 0);
		;
		;
		goto R999;

	case 483: // STATE 613
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 484: // STATE 616
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 485: // STATE 619
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 2, 0);
		;
		;
		goto R999;

	case 486: // STATE 622
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 8, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 487: // STATE 625
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 7, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 488: // STATE 628
		;
		XX = 1;
		unrecv(now.CRM2BEG, XX-1, 0, 6, 1);
		unrecv(now.CRM2BEG, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 489: // STATE 637
		;
		p_restor(II);
		;
		;
		goto R999;
	}

