
/*
 *  Copied from Towards Efficient Model Checking,
 *  Phd Dissertation by Theo Ruys 2001, chapter 4
 *  I tested this code (9 Jun 2009), works OK with BITV_32;
 *  however, its seems to have problems with
 *  BITV_16, SET_ALL_1(person,16) causes truncation.
 *  2) bool result= IS_1(person, n) and int result= IS_1(person,n)
 *  cause problems. 
 */

#define BITV_U(x,n) unsigned x : n
#define BITV_8 byte
#define BITV_16 short
#define BITV_32 int

/* this const is 0111....111 */
#define ALL_1S 2147483647

/* set bit i to 0 and 1, respectively */
#define SET_0(bv,i) bv=bv&(~(1<<i))
#define SET_1(bv,i) bv=bv|(1<<i)

/* set all bit to 0 and 1, respectively */
#define SET_ALL_0(bv) bv=0
#define SET_ALL_1(bv,n) bv=ALL_1S>>(31-n)

/* is bit i 0 or 1, respectively */
#define IS_0(bv,i) (!(bv&(1<<i)))
#define IS_1(bv,i) (bv&(1<<i))

/* Ben-Ari version from Principles of the Spin Model Checker
 * Springer 2008, p 192.
 * #define IS_1(bv,i) (bv >> i & 1)
 */

