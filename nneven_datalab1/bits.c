/* REMEMBER:
 * - This is the only file that you need to edit!
 * - Declare variables only at the beginning of a function (as in C89).
 * - Do not include <stdio.h> header (it confuses dlc)
 * - Check correctness with ./btest
 * - Check operator constraints with ./dlc bits.c
 * - Run ./grade before you commit/push your solution
 */

/*
 * TMax - return maximum two's complement integer
 * (tip: how can you flip many bits from 0 to 1?)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmax(void) {
  // 0x7FFFFFFF;
  int a = 0x80 << 24; // taken from discussion #2 slides
  return ~a;
}

/*
 * bitOr - x|y using only ~ and &
 * (tip: always remember De Morgan's laws!)
 *   Example: bitOr(6, 5) = 7
 *   Legal ops: ~ &
 *   Max ops: 4
 *   Rating: 1
 */
int bitOr(int x, int y) {
  return ~((~x) & (~y)); 
}

/*
 * negate - return -x
 * (tip: remember the definition of two's complement!)
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 2
 *   Rating: 1
 */
int negate(int x) {
  return (~x) + 1;
}

/*
 * isEqual - return 1 if x == y, and 0 otherwise
 * (tip: which bitwise op checks inequality?)
 *   Examples: isEqual(5,5) = 1, isEqual(4,5) = 0
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 2
 *   Rating: 2
 */
int isEqual(int x, int y) {
  return !(x ^ y);
}

/*
 * isNegative - return 1 if x < 0, return 0 otherwise
 * (tip: which bit distinguishes negative integers?)
 *   Example: isNegative(-1) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 2
 *   Rating: 2
 */
int isNegative(int x) {
  return (x >> 31) & 1; // taken from discussion #2 slides
}

/*
 * getByte - Extract byte n from word x
 * (tip: think about shifts)
 *   Bytes numbered from 0 (least significant) to 3 (most significant)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int getByte(int x, int n) {
  int a = x >> (n << 3); // used information from discussion #2 slides
  return a & 0xFF;
}

/*
 * addOverflow - Determine whether x+y causes signed overflow
 * (tip: remember the signed overflow rule)
 *   Example: addOverflow(0x80000000,0x80000000) = 1
 *            addOverflow(0x80000000,0x70000000) = 0
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 3
 */
int addOverflow(int x, int y) {
  int z = x + y;
  int a = (((x ^ y) >> 31) & 1) ^ 1; // taken from discussion #2 slides
  int b = (((x ^ z) >> 31) & 1) ^ 1;
  return !((!a) | b); // help from CP Julian
}
