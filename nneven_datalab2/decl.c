#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

#define TMin INT_MIN
#define TMax INT_MAX

#include "btest.h"
#include "bits.h"

test_rec test_set[] = {

 {"conditional", (funct_t) conditional, (funct_t) test_conditional, 3, "! ~ & ^ | << >>", 10, 3,
  {{TMin, TMax},{TMin,TMax},{TMin,TMax}}},
 {"bitMask", (funct_t) bitMask, (funct_t) test_bitMask, 2,
    "! ~ & ^ | + << >>", 10, 3,
  {{0, 31},{0,31},{TMin,TMax}}},
 {"bitParity", (funct_t) bitParity, (funct_t) test_bitParity, 1, "! ~ & ^ | + << >>", 15, 4,
  {{TMin, TMax},{TMin,TMax},{TMin,TMax}}},
 {"dividePower2", (funct_t) dividePower2, (funct_t) test_dividePower2, 2,
    "! ~ & ^ | + << >>", 8, 3,
  {{TMin, TMax},{0,30},{TMin,TMax}}},
 {"floatIsLess", (funct_t) floatIsLess, (funct_t) test_floatIsLess, 2,
    "$", 30, 4,
     {{1, 1},{1,1},{1,1}}},
 {"floatFloat2Int", (funct_t) floatFloat2Int, (funct_t) test_floatFloat2Int, 1,
    "$", 30, 4,
     {{1, 1},{1,1},{1,1}}},
  {"", NULL, NULL, 0, "", 0, 0,
   {{0, 0},{0,0},{0,0}}}
};
