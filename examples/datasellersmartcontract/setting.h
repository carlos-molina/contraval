/*
 * Copied from Principles of the Spin Model Checker
 * Mordechai Ben-Ari, Springer 2008, p101, see also p17
 */

#define setting() \

#define YES            1
#define NO             0
#define TRUE           1
#define FALSE          0
#define ACCEPT         1
#define REJECT         0


/* global chan to send event to rules */

/* chan to send event from filter to rules */
chan BEG2CRM = [1] of {mtype,mtype}; 

/* chan to send Ack to request next msg */
chan CRM2BEG = [0] of {mtype,mtype}; 


/* ltl s1 { []((c) -> <> !h) } */
