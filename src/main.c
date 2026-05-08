#include "bar.h"
#include "calculator.h"
#include "demo.h"
#include "foo.h"
#include <stdio.h>

int main() {
  printf("Calling foo and bar functions:\n");
  foo();
  bar();

  demo();

  printf(" %d \n", power(2, 8));
  return 0;
}
