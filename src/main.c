#include "a1.h"
#include "bar.h"
#include "calculator.h"
#include "demo.h"
#include "foo.h"
#include "gg.h"
#include "test/t1.h"
#include <stdio.h>

int main() {
  printf("Calling foo and bar functions:\n");
  foo();
  bar();

  test1();
  demo();

  a1();
  gg();
  printf(" %d \n", power(2, 8));
  return 0;
}
