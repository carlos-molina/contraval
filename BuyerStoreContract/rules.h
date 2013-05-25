/*
 * EPROMELA code of the ECA rules that implement a
 * a contract between a buyer and store.
 * The code prints out messages with xml like
 * tags which can be used for signaling out
 * messages when the model is used for generating 
 * execution sequences.
 *
 * Carlos Molina J., 17 Apr 2013, Ncl Uni, UK
 *
 * Notation used in this code: cont-contract,
 * SC-success, TF-technical failure,
 * tecfail- technical failure. 
 */ 

/* Rule triggered by buyreq executions initiated
 * by the buyer and completed either in success or 
 * technical failure.
 */
RULE(BUYREQ)
{
 WHEN::EVENT(BUYREQ,IS_R(BUYREQ,BUYER),SC(BUYREQ))
  /* handle buyreq with success outcome */
  ->{ SET_X(BUYREQ,BUYER);
     atomic{
     printf("\n\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>BUYREQ</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
     SET_R(BUYREQ,0);
     SET_O(BUYREJ,1);
     SET_O(BUYCONF,1);
     RD(BUYREQ,BUYER,CCR,CO);
    }	
 /* handle buyreq with technical failure outcome */
 ::EVENT(BUYREQ,IS_R(BUYREQ,BUYER),TF(BUYREQ))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>BUYREQ</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     }
    if /* 1st notification of buyreq with TF */
    :: (ReqFailBefore==NO) ->ReqFailBefore=YES;
     printf("First BUYREQ-TechnicalFailure"); 
     RD(BUYREQ,BUYER,CCR,CO);

    /* 2nd notification of buyreq with TF */
    :: (ReqFailBefore==YES) -> abncoend=TRUE; 
     printf("Last BUYREQ-TechnicalFailure"); 
     SET_R(BUYREQ,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(BUYREQ,BUYER,CCR,CND);/*abnormal cont end*/
    fi
    }
 END(BUYREQ);		 
}



/* Rule triggered by buyrej executions initiated
 * by the store and completed either in success or 
 * technical failure.
 */
RULE(BUYREJ)
{
 /* handle buyrej with success outcome */
 WHEN::EVENT(BUYREJ,IS_O(BUYREJ,STORE),SC(BUYREJ))
  ->{ SET_X(BUYREJ,STORE);
     atomic{
     printf("\n\n");
     printf("<originator>store</originator>\n");
     printf("<responder>buyer</responder>\n");
     printf("<type>BUYREJ</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
     SET_O(BUYREJ,0);
     SET_O(BUYCONF,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(BUYREJ,STORE,CCO,CND);
    }	
 /* handle buyrej with technical failure outcome */
 ::EVENT(BUYREJ,IS_O(BUYREJ,STORE),TF(BUYREJ))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>store</originator>\n");
     printf("<responder>buyer</responder>\n");
     printf("<type>BUYREJ</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     }
    if /* 1st notification of buyrej with TF */
    :: (RejFailBefore==NO) ->RejFailBefore=YES;
     printf("First BUYREJ-TechnicalFailure"); 
     RD(BUYREJ,STORE,CCO,CO);

    /* 2nd notification of buyrej with TF */
    :: (RejFailBefore==YES) -> abncoend=TRUE; 
     printf("Last BUYREJ-TechnicalFailure"); 
     SET_O(BUYREJ,0);
     SET_O(BUYCONF,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(BUYREJ,STORE,CCO,CND);/*abnormal cont end*/
    fi
    }
 END(BUYREJ);		 
}



/* Rule triggered by buyconf executions initiated
 * by the store and completed either in success or 
 * technical failure.
 */
RULE(BUYCONF)
{
 /* handle buyconf with success outcome */
 WHEN::EVENT(BUYCONF,IS_O(BUYCONF,STORE),SC(BUYCONF))
  ->{ SET_X(BUYCONF,STORE);
     atomic{
     printf("\n\n");
     printf("<originator>store</originator>\n");
     printf("<responder>buyer</responder>\n");
     printf("<type>BUYCONF</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     }
     SET_O(BUYREJ,0);
     SET_O(BUYCONF,0);
     SET_O(BUYPAY,1);
     SET_O(BUYCANC,1);
     RD(BUYCONF,STORE,CCO,CO);
    }	
 /* handle buyconf with technical failure outcome */
 ::EVENT(BUYCONF,IS_O(BUYCONF,STORE),TF(BUYCONF))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>store</originator>\n");
     printf("<responder>buyer</responder>\n");
     printf("<type>BUYCONF</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     }
    if /* 1st notification of buyconf with TF */
    :: (ConfFailBefore==NO) ->ConfFailBefore=YES;
     printf("First BUYCONF-TechnicalFailure"); 
     RD(BUYCONF,STORE,CCO,CO);

    /* 2nd notification of buyconf with TF */
    :: (ConfFailBefore==YES) -> abncoend=TRUE; 
     printf("Last BUYCONF-TechnicalFailure"); 
     SET_O(BUYREJ,0);
     SET_O(BUYCONF,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(BUYCONF,STORE,CCO,CND);/*abnormal cont end*/
    fi
    }
 END(BUYCONF);		 
}



/* Rule triggered by buypay executions initiated
 * by the buyer and completed either in success or 
 * technical failure.
 */
RULE(BUYPAY)
{
 printf("BUYPAY rule (first lines) \n"); 
 /* handle buypay with success outcome */
 WHEN::EVENT(BUYPAY,IS_O(BUYPAY,BUYER),SC(BUYPAY))
  ->{SET_X(BUYPAY,BUYER);
     atomic{
     printf("\n\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>BUYPAY</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     } 
     SET_O(BUYPAY,0);
     SET_O(BUYCANC,0);

     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(BUYPAY,BUYER,CCO,CND);/*ideal cont end*/
    }	
 /* handle buypay with technical failure outcome */
 ::EVENT(BUYPAY,IS_O(BUYPAY,BUYER),TF(BUYPAY))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>BUYPAY</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
    if /* 1st notification of buypay with TF */
    :: (PayFailBefore==NO) ->PayFailBefore=YES;
     printf("First BUYPAY-TechnicalFailure"); 
     RD(BUYPAY,BUYER,CCO,CO); 

    /* 2nd notification of buypay with TF */
    :: (PayFailBefore==YES) -> abncoend=TRUE; 
     printf("Last BUYPAY-TechnicalFailure"); 

     SET_O(BUYPAY,0);
     SET_O(BUYCANC,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(BUYPAY,BUYER,CCO,CND);/*abnormal cont end*/
    fi
    }
 END(BUYPAY);		 
}



/* Rule triggered by buycanc executions initiated
 * by the buyer and completed either in success or 
 * technical failure.
 */
RULE(BUYCANC)
{
 /* handle buycanc with success outcome */
 WHEN::EVENT(BUYCANC,IS_O(BUYCANC,BUYER),SC(BUYCANC))
  ->{ SET_X(BUYCANC,BUYER);
     atomic{
     printf("\n\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>BUYCANC</type>\n");
     printf("<status>success</status>\n");
     printf("\n\n")
     } 

     SET_O(BUYPAY,0); 
     SET_O(BUYCANC,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(BUYCANC,BUYER,CCO,CND);
    }	
 /* handle buycanc with technical failure outcome */
 ::EVENT(BUYCANC,IS_O(BUYCANC,BUYER),TF(BUYCANC))
  ->{
     atomic{
     printf("\n\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>BUYCANC</type>\n");
     printf("<status>tecfail</status>\n");
     printf("\n\n")
     } 
    if /* 1st notification of buycanc with TF */
    :: (CancFailBefore==NO) ->CancFailBefore=YES;
     printf("First BUYCANC-TechnicalFailure"); 
     RD(BUYCANC,BUYER,CCO,CO);

    /* 2nd notification of buycanc with TF */
    :: (CancFailBefore==YES) -> abncoend=TRUE; 
     printf("Last BUYCANC-TechnicalFailure"); 
     SET_O(BUYPAY,0);
     SET_O(BUYCANC,0);
     atomic{
     printf("\n\n");
     printf("<originator>reset</originator>\n");
     printf("<responder>reset</responder>\n");
     printf("<type>reset</type>\n");
     printf("<status>reset</status>\n");
     printf("\n\n")}

     RD(BUYCANC,BUYER,CCO,CND);/*abnormal cont end*/
    fi
    }
 END(BUYCANC);		 
}
	
