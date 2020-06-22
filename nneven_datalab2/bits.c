/* REMEMBER:
 * - This is the only file that you need to edit!
 * - Declare variables only at the beginning of a function (as in C89).
 * - Do not include <stdio.h> header (it confuses dlc)
 * - Check correctness with ./btest
 * - Check operator constraints with ./dlc bits.c
 * - Run ./grade before you commit/push your solution
 */

/*
 * conditional - same as x ? y : z
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 10
 *   Rating: 3
 */
int conditional(int x, int y, int z) { // discussion #2 slides
  int isNonZero = !!x;
  isNonZero = ~isNonZero + 1;
  return (isNonZero & y) | (~isNonZero & z);
}

/*
 * bitMask - Generate a mask consisting of all 1's
 *           between lowbit and highbit (inclusive).
 *   Examples: bitMask(5,3) = 0x38
 *   Assume 0 <= lowbit <= 31, and 0 <= highbit <= 31
 *   If lowbit > highbit, then mask should be all 0's
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 10
 *   Rating: 3
 */
int bitMask(int highbit, int lowbit) { // help from CP Aliya
  int ones = ~0;
  int numBits = highbit + (~lowbit + 1);
  int low = ones << lowbit;
  int high = ones << highbit;
  high = high << 1;

  return low & ~high;

}

/*
 * bitParity - returns 1 if x contains an odd number of 0's
 *   Examples: bitParity(5) = 0, bitParity(7) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 4
 */
int bitParity(int x) { // help from CP Aliya
  x = x ^ (x >> 16);
  x = x ^ (x >> 8);
  x = x ^ (x >> 4);
  x = x ^ (x >> 2);
  x = x ^ (x >> 1);

  return x & 1;
}

/*
 * dividePower2 - Compute x/(2^n), for 0 <= n <= 30
 *                Round toward zero.
 *   Examples: dividePower2(15,1) = 7, dividePower2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 3
 */
int dividePower2(int x, int n) { // discussion #3 slides
  int isNeg = x >> 31;
  return (~isNeg & (x >> n)) | (isNeg & ((x + (1 << n) + (~1 + 1)) >> n));
}

/*
 * floatIsLess - Compute f < g for floating point arguments f and g.
 *     Both the arguments are passed as unsigned int's, but
 *     they are to be interpreted as the bit-level representations of
 *     single-precision floating point values.
 *     If either argument is NaN, return 0.
 *     +0 and -0 are considered equal.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
int floatIsLess(unsigned uf, unsigned ug) { // help from CP Eric

    int fSign = (uf & 0x80000000) ? 1 : 0;
    int gSign = (ug & 0x80000000) ? 1 : 0;
    int fExp = (uf >> 23) & 0xFF;
    int gExp = (ug >> 23) & 0xFF;
    int fFrac = uf & 0x007FFFFF;
    int gFrac = ug & 0x007FFFFF;
    
    if ((fExp == 0xFF && fFrac != 0) || (gExp == 0xFF && gFrac != 0)) return 0;
    if ((fExp == 0 && fFrac == 0) && (gExp == 0 && gFrac == 0)) return 0;

    if (fSign > gSign) return 1;
    if (fSign == gSign) {
      if (fSign) {
        if (fExp > gExp) return 1;
        else if (fExp == gExp) {
          if (fFrac > gFrac) return 1;
        }
      } else {
        if (fExp < gExp) return 1;
        else if (fExp == gExp) {
          if (fFrac < gFrac) return 1;
        }
      }
    }

    return 0;
}

/* 
 * floatFloat2Int - Return the bit-level equivalent of expression (int) f
 *                  for floating point argument f.
 *     Argument is passed as unsigned int, but it is to be interpreted as 
 *     the bit-level representation of a single-precision floating point value.
 *     Anything out of range (including NaN and infinity) should return 0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
int floatFloat2Int(unsigned uf) { // help from CP Shray

    int sign = (uf & 0x80000000) ? 1 : 0;
    int exp = ((uf >> 23) & 0xFF) - 127;
    int frac = uf & 0x007FFFFF;
    int result;

    if (exp == 0xFF) return 0x80000000;
    if (exp > 31) return 0x80000000;

    if (exp >= 0) {

      if (exp <= 23) {
        frac = frac >> (23 - exp);
      } else {
        frac = frac << (exp - 23);
      }

      result = frac | (1 << exp);

      if (sign) result = -result;

      return result;
    }

    return 0;
}
