
/*
 * Copied from Principles of the Spin Model Checker
 * Mordechai Ben-Ari, Springer 2008, p101, see also p17
 */

#define for(I,low,high) \
 byte I; \
 I= low; \
 do \
 :: (I > high) -> break \
 :: else ->

#define rof(I) \
 ; I++ \
 od
