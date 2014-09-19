/* This example comes from "Varieties of Static Analyzers: A Comparison 
   with ASTRÉE" by Cousot, Cousot, Feret, Mauborgne, Miné, Monniaux, 
   and Rival, published in TASE 07.
 */

float __VERIFIER_nondet_float(void) { float val; return val; }
void __VERIFIER_assume(int expression) { if (!expression) { LOOP: goto LOOP; }; return; }
void __VERIFIER_assert(int cond) { if (!(cond)) { ERROR: goto ERROR; } return; }


typedef enum { FALSE = 0, TRUE = 1 } BOOLEAN;

BOOLEAN INIT;
float C1, I;

float RANDOM_INPUT()
{
  float x;
  x = __VERIFIER_nondet_float();
  __VERIFIER_assume(x >= -1.f && x <= 1.f);
  return x;
}

void wait_for_clock() { }

void bary() 
{
  static float X,Y,Z;

  if (C1 > 0.f) { 
    Z = Y; 
    Y = X;
  }

  if (INIT == TRUE) { 
    X = I; 
    Y = I; 
    Z = I; 
  }
  else {
    X = 0.50000001f*X + 0.30000001f*Y + 0.20000001f*Z;
  }

  __VERIFIER_assert(X >= -5.f && X <= 5.f);
}

void main () 
{
  int i;

  INIT = TRUE; 
  C1 = RANDOM_INPUT(); 
  I = RANDOM_INPUT();

  for (i = 0; i < 3600000; i++) {
    bary();
    INIT = RANDOM_INPUT(); 
    C1 = RANDOM_INPUT(); 
    I = RANDOM_INPUT();
    wait_for_clock();
  }
}
