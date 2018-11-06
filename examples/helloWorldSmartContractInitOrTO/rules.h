/*
 * Programmer:
 * Carlos Molina Jimenez, 5 Aug 2018, Computer Lab, Univ Cambridge
 * Carlos.Molina@cl.cam.ac.uk
 *
 * Version: v.5Aug2018:
 *
 * Program: helloWorlSmartContract.pml is the epromela model
 *          of a Hello World contract. It shows the folowing 
 *          actions:
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
 * An schematic view of the contract is shown in the
 * helloWorldSmartContract.pdf file.
 *
 * rules.h (this file) implements the rules used by the 
 * helloWorldSmartContract.pml model.
 *
 * * Execution:
 * a) helloWorldSmartContract.pml depends on rules.h which compose 
 * this model.
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
 * SC-success, exec--execution
 *
 * SC-success, TO- TimeOut.
 * CCR, CCO: Contract Compliant Right and Obligation, respectively
 * NCC: Non Contract Compliant operation
 * CND: Contract trace Ends. 
 * CO: Continue Contract trace 
 *
 */ 


/* 
 * Rule triggered by execution of pay initiated
 * by the buyer and completes always in success.
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
     printf("<type>PAY</type>\n");
     printf("<status>success</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
     /* printf("PAY-Success!!!\n"); */ 	
     SET_O(PAY,0);  /* cancel oblig to PAY */
     SET_O(PAYTO,0);/* cancel oblig to PAYTO */
     SET_O(ACK,1);  /* store oblig to exec either ACK or ACKTO */
     SET_O(ACKTO,1); 
     RD(PAY,BUYER,CCO,CO); /* CO: the contr continues */
    }	
 END(PAY);		 
}


/*
 * Rule triggered when timeout to pay expires. It is
 * initiated by the buyer and completes always in 
 * success.
 */
RULE(PAYTO)
{
 WHEN::EVENT(PAYTO,IS_O(PAYTO,BUYER),SC(PAYTO))
  /* models timeout of obligation to pay */
  ->{
     atomic{
     printf("\n\n");
     printf("<event>\n");
     printf("<originator>buyer</originator>\n");
     printf("<responder>store</responder>\n");
     printf("<type>PAYTO</type>\n");
     printf("<status>success</status>\n");
     printf("</event>");
     printf("\n\n")
     }
     /* printf("PAYTO-Success!!!\n"); */
     SET_O(PAY,0);   /* cancel oblig to PAY    */
     SET_O(PAYTO,0); /* cancel obliga to PAYTO */
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
     RD(PAYTO,BUYER,CCO,CND); /*contr ends in dispute */
    }
 END(PAYTO);
}

/* 
 * Rule triggered by the execution of ack 
 * initiated by the store and completes always 
 * in success.
 */
RULE(ACK)
{
 WHEN::EVENT(ACK,IS_O(ACK,STORE),SC(ACK))
  /* handle ack with success outcome */
  ->{ 
     atomic{
     printf("\n\n"); 
     printf("<event>\n");
     printf("<originator>store</originator>\n");
     printf("<responder>buyer</responder>\n");
     printf("<type>ACK</type>\n");
     printf("<status>success</status>\n");  
     printf("</event>");
     printf("\n\n")
     }
     /* printf("ACK-Success!!!\n"); */ 	
     SET_O(ACK,0);   /*store oblig to exec ACK   fulfilled*/
     SET_O(ACKTO,0); /*store oblig to exec ACKTO fulfilled*/
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
     RD(ACK,STORE,CCO,CND); /* CND: contr ends normally */
    }	
 END(ACK);		 
}

/*
 * Rule triggered when timeout to execute ack expires. 
 * It is initiated by the buyer and completes always in 
 * success.
 */
RULE(ACKTO)
{
 WHEN::EVENT(ACKTO,IS_O(ACKTO,STORE),SC(ACKTO))
  /* models timeout of obligation to ack */
  ->{
     atomic{
     printf("\n\n");
     printf("<event>\n");
     printf("<originator>store</originator>\n");
     printf("<responder>buyer</responder>\n");
     printf("<type>ACKTO</type>\n");
     printf("<status>success</status>\n");
     printf("</event>");
     printf("\n\n")
     }
     /* printf("ACKTO-Success!!!\n"); */
     SET_O(ACK,0);   /* cancel oblig to exec ACKT  */
     SET_O(ACKTO,0); /* cancel oblig to exec ACKTO */
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
     RD(ACKTO,STORE,CCO,CND); /*contr ends in dispute */
    }
 END(ACKTO);
}

