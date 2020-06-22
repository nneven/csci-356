/* Testing Code */

#include <limits.h>
#include <math.h>

/* Routines used by floation point test code */

/* Convert from bit level representation to floating point number */
float u2f(unsigned u) {
  union {
    unsigned u;
    float f;
  } a;
  a.u = u;
  return a.f;
}

/* Convert from floating point number to bit-level representation */
unsigned f2u(float f) {
  union {
    unsigned u;
    float f;
  } a;
  a.f = f;
  return a.u;
}


int test_conditional(int x, int y, int z)
{
  return x?y:z;
}
int test_bitMask(int highbit, int lowbit)
{
  int result = 0;
  int i;
  for (i = lowbit; i <= highbit; i++)
    result |= 1 << i;
  return result;
}
int test_bitParity(int x) {
  int result = 0;
  int i;
  for (i = 0; i < 32; i++)
    result ^= (x >> i) & 0x1;
  return result;
}
int test_dividePower2(int x, int n)
{
    int p2n = 1<<n;
    return x/p2n;
}
int test_floatIsLess(unsigned uf, unsigned ug) {
    float f = u2f(uf);
    float g = u2f(ug);
    return f < g;
}
int test_floatFloat2Int(unsigned uf) {
  float f = u2f(uf);
  int x = (int) f;
  return x;
}
