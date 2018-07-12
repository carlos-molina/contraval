/*
 * EPROMELA code of the ECA rules that implement a
 * a contract between a buyer and a store.
 * It has been built to generate all the execution
 * sequences. Though the code for handling failures
 * is included, it has not been run or tested.
 * 1)the contract to be written in Solidity will be
 *    split into off blockchain (on ccc) and on blockchain
 *    (on Ethereum). 
 * 2)ccc-sc will be the master and eth-sc will be the
 *    slave.
 * 3)only pay will be enforced by ethe-sc. Ethe-sc
 *    will notifiy (payNotification=YES) the ccc of receiving 
 *    the payment.
 * 4)a voucher is granted to buyer after paying through
 *   eth-sc. Yet the ccc honours the buyer's right
 *   and grants the voucher only if it receives
 *   "get voucher" after payNotification=YES. 
 *
 * Carlos Molina Jimenez, 9 Jul 2018, Computer Lab, Univ Cambridge
 *
 * Execution:
 * a) dataseller.pml depends on rules.h which compose this
 * model.
 * b) BizOperation.h bitvector.lpr : epromela files
 * c) parser-filtering.py and pro2sep : sequence generation scripts
 *
 * % pro2seq
 * Type 12 or a larger number when asked about the
 * number of sequences.
 *
 * Notation used in this code: cont-contract,
 * SC-success, BF-business failure.
 * CCR, CCO: Contract Compliant Right and Obligation, respectively
 * NCC: Non Contract Compliant operation
 * CND: Contract trace Ends. 
 * CO: Continue Contract trace 
 *
 * The name of the events used in the model (datacontract.pml
 * and Rules.h is slightly shorter that the names used in
 * the print statements:
 * BUYRQ->BUYREQ, REJ-> BUYREJ, CONF->BUYCONF, PAY->BUYPAY
 * CAN->BUYCANC. The mismatch is a compromise to keep
 * compatibility with names that we use is an existing
 * .drl file.
 */ 


/* Rule triggered by buyreq executions initiated
 * by the buyer and completed either in success or 
 * business failure.
 */
RULE(BUYRQ)
{
 WHEN::EVENT(BUYRQ,IS_R(BUYRQ,BUYER),SC(BUYRQ))
  /* handle buyrq with success outcome */
  ->{ 
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>BUYREQ</type>\n");
     printf("<status>success</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
     /* printf("BUYRQ-Success!!!\n"); */ 	
     SET_R(BUYRQ,0);
     SET_O(REJ,1);  /*store obliged to ex REJ or */
     SET_O(CONF,1); /*store obliged to ex CONF   */
     RD(BUYRQ,BUYER,CCR,CO);
    }	
 /* handle buyreq with business failure outcome */
 ::EVENT(BUYRQ,IS_R(BUYRQ,BUYER),BF(BUYRQ))
  ->{
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>BUYREQ</type>\n");
     printf("<status>bizfail</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
    if /* 1st notification of buyreq with BF */
    :: (BuyRqFailBefore==NO) ->BuyRqFailBefore=YES;
     printf("First BUYREQ-BusinessFailure"); 
     RD(BUYRQ,BUYER,CCR,CO);

    /* 2nd notification of buyreq with BF */
    :: (BuyRqFailBefore==YES) -> 
     printf("Last BUYREQ-BusinessFailure"); 
     SET_R(BUYRQ,0);
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
     RD(BUYRQ,BUYER,CCR,CND);/* CND: Contract End */
    fi                       /* early contract end due to BFs */
    }
 END(BUYRQ);		 
}



/* 
 * Store is obliged to either REJ or CONF:
 * Rule triggered by STORE to ejecute REJ and 
 * completes either in success or business failure.
 */
RULE(REJ)
{
 /* handle rej with success outcome */
 WHEN::EVENT(REJ,IS_O(REJ,STORE),SC(REJ))
  ->{
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>store</originator>\n");
     printf("<responder>buyer</responder>\n");
     printf("<type>BUYREJ</type>\n");
     printf("<status>success</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
     printf("REJ-Success"); 	
     SET_O(REJ,0);
     SET_O(CONF,0);
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
     RD(REJ,STORE,CCO,CND) 
    }	
 /* handle buyreq with business failure outcome */
 ::EVENT(REJ,IS_O(REJ,STORE),BF(REJ))
  ->{
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>store</originator>\n");
     printf("<responder>buyer</responder>\n");
     printf("<type>BUYREJ</type>\n");
     printf("<status>bizfail</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
    if /* 1st notification of buyrej with BF */
    :: (RejFailBefore==NO) ->RejFailBefore=YES;
     printf("First Rej-BusinessFailure"); 
     RD(REJ,STORE,CCO,CO) 

    /* 2nd notification of buyrej with BF */
    :: (RejFailBefore==YES) -> 
     printf("Last BUYREJ-BusinessFailure"); 
     SET_O(REJ,0);
     SET_O(CONF,0);
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
     RD(REJ,STORE,CCO,CND);/*early cont end due to BFs*/
    fi
    }
 END(REJ);		 
}


/* 
 * Store is obliged to either REJ or CONF:
 * Rule triggered by STORE to ejecute CONF and 
 * completes either in success or business failure.
 */
RULE(CONF) 
{
 /* handle conf with success outcome */
 WHEN::EVENT(CONF,IS_O(CONF,STORE),SC(CONF))
  ->{
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>store</originator>\n");
     printf("<responder>buyer</responder>\n");
     printf("<type>BUYCONF</type>\n");
     printf("<status>success</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
     printf("CONF-Success"); 	
     SET_O(REJ,0);
     SET_O(CONF,0);

     SET_O(PAY,1); /* seller obliged to either pay or cancel */
     SET_O(CANC,1);
     RD(CONF,STORE,CCO,CO) 
    }	
 /* handle conf with business failure outcome */
 ::EVENT(CONF,IS_O(CONF,STORE),BF(CONF))
  ->{
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>store</originator>\n");
     printf("<responder>buyer</responder>\n");
     printf("<type>BUYCONF</type>\n");
     printf("<status>bizfail</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
    if /* 1st notification of conf with BF */
    :: (ConfFailBefore==NO) ->ConfFailBefore=YES;
     printf("First BuyConf-BusinessFailure"); 
     RD(CONF,STORE,CCO,CO) 

    /* 2nd notification of conf with BF */
    :: (ConfFailBefore==YES) -> 
     printf("Last CONF-BusinessFailure"); 
     SET_O(REJ,0);
     SET_O(CONF,0);
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
     RD(CONF,STORE,CCO,CND);/*early cont end due to BFs*/
    fi
    }
 END(CONF);		 
}


/*
 * Upon successful CONF, store is obliged to execute either
 * PAY or BUYCAN:
 * Rule triggered by PAY executions initiated
 * by the buyer and completed either in success or 
 * business failure.
 */
RULE(PAY)
{
 WHEN::EVENT(PAY,IS_O(PAY,BUYER),SC(PAY))
  /* handle pay with success outcome */
  ->{ 
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>BUYPAY</type>\n");
     printf("<status>success</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
     if
     ::/* buyer exercises right to claim voucher */
       /* printf("BUYRQ-Success!!!\n"); */ 	
       /*
        * this if-fi models a notification to be sent
        * by smartcontract on blockchain (bc) to smart contract
        * on centralised (contract compliant checker ccc)
        * about receipt of payment.
        */
       if
       :: SET_O(PAY,0);
          SET_O(CANC,0);
          SET_R(GETVOU,1); 
          payNotification= NO; /* bc does not send notification */
          RD(PAY,BUYER,CCO,CO)
       :: SET_O(PAY,0);
          SET_O(CANC,0);
          payNotification= YES; /* bc sends notification */
          SET_R(GETVOU,1); 
          RD(PAY,BUYER,CCO,CO)
       fi 
  
     ::/* buyer ignores righ to get voucher */
       /* printf("BUYRQ-Success!!!\n"); */ 	
       SET_O(PAY,0);
       SET_O(CANC,0);
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
       RD(PAY,BUYER,CCO,CO)
     fi
    }	
 /* handle pay with business failure outcome */
 ::EVENT(PAY,IS_O(PAY,BUYER),BF(PAY))
  ->{
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>BUYPAY</type>\n");
     printf("<status>bizfail</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
    if /* 1st notification of pay with BF */
    :: (PayFailBefore==NO) ->PayFailBefore=YES;
     printf("First BUYPAY-BusinessFailure"); 
     RD(PAY,BUYER,CCO,CO);

    /* 2nd notification of pay with BF */
    :: (PayFailBefore==YES) -> 
     printf("Last BUYPAY-BusinessFailure"); 
     SET_O(PAY,0);
     SET_O(CANC,0);
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
     RD(PAY,BUYER,CCO,CND);/*early cont end due to BFs*/
    fi
    }
 END(PAY);		 
}

/*
 * Upon successful PAY, the buyer has the right
 * to either claim (excute GETVOU) or ignore a 
 * (execute no nothing) voucher. 
 * This rule triggered the execution of GETVOU 
 * by the buyer and completed either in success or 
 * business failure.
 */
RULE(GETVOU)
{
 WHEN::EVENT(GETVOU,IS_R(GETVOU,BUYER),SC(GETVOU))
  /* handle getvou with success outcome */
  ->{ 
     if
     :: (payNotification==NO)-> /* ccc has not received notitication */ 
        atomic{                 /* from blockchain                   */
        printf("\n\n"); 
        printf("<event>\n");
        printf("<originator>buyer</originator>\n");
        printf("<responder>store</responder>\n");
        printf("<type>GETVOU</type>\n");
        printf("<status>success</status>\n");  
        printf("</event>");
        printf("\n\n")

        printf("\n\n"); 
        printf("<event>\n");
        printf("<originator>ccc</originator>\n");
        printf("<responder>nobody</responder>\n");
        printf("<type>NORIGHTTOGETVOU</type>\n");
        printf("<status>notification</status>\n");  
        printf("</event>");
        printf("\n\n")
         }

        printf("GETVOU-Success!!!\n");
        SET_R(GETVOU,1);
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
        RD(GETVOU,BUYER,NCC,CND)
 
     :: (payNotification==YES) -> /* ccc has received notification */
     atomic{                      /* from blockchain               */
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>GETVOU</type>\n");
     printf("<status>success</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
     printf("GETVOU-Success!!!\n");  	
     SET_R(GETVOU,0);
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
     RD(GETVOU,BUYER,CCR,CND);
    fi
    }	
 /* handle GETVOU with business failure outcome */
 ::EVENT(GETVOU,IS_R(GETVOU,BUYER),BF(GETVOU))
  ->{
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>GETVOU</type>\n");
     printf("<status>bizfail</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
    if /* 1st notification of getvou with BF */
    :: (GetVouFailBefore==NO) ->GetVouFailBefore=YES;
     printf("First GETVOU-BusinessFailure"); 
     RD(GETVOU,BUYER,CCR,CO);

    /* 2nd notification of getvou with BF */
    :: (GetVouFailBefore==YES) -> 
     printf("Last GETVOU-BusinessFailure"); 
     SET_R(GETVOU,0);
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
     RD(GETVOU,BUYER,CCR,CND);/*early cont end due to BFs*/
    fi
    }
 END(GETVOU);		 
}



/*
 * Upon successful CONF, store is obliged to execute either
 * PAY or CANC:
 * Rule triggered by CANC executions initiated
 * by the buyer and completed either in success or 
 * business failure.
 */
RULE(CANC)
{
 WHEN::EVENT(PAY,IS_O(CANC,BUYER),SC(CANC))
  /* handle canc with success outcome */
  ->{ 
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>BUYCANC</type>\n");
     printf("<status>success</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
     /* printf("CANC-Success!!!\n"); */ 	
     SET_O(PAY,0);
     SET_O(CANC,0);
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
     RD(CANC,BUYER,CCO,CND);
    }	
 /* handle canc with business failure outcome */
 ::EVENT(CANC,IS_O(CANC,BUYER),BF(CANC))
  ->{
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>BUYCANC</type>\n");
     printf("<status>bizfail</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
    if /* 1st notification of canc with BF */
    :: (CancFailBefore==NO) ->CancFailBefore=YES;
     printf("First CANC-BusinessFailure"); 
     RD(CANC,BUYER,CCO,CO);

    /* 2nd notification of canc with BF */
    :: (CancFailBefore==YES) -> 
     printf("Last CANC-BusinessFailure"); 
     SET_O(PAY,0);
     SET_O(CANC,0);
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
     RD(CANC,BUYER,CCO,CND);/*early cont end due to BFs*/
    fi
    }
 END(CANC);		 
}


