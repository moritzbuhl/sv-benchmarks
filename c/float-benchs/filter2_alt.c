/* This example comes from "Varieties of Static Analyzers: A Comparison 
   with ASTRÉE" by Cousot, Cousot, Feret, Mauborgne, Miné, Monniaux, 
   and Rival, published in TASE 07.
 */

float __VERIFIER_nondet_float(void) { float val; return val; }
void __VERIFIER_assume(int expression) { if (!expression) { LOOP: goto LOOP; }; return; }
void __VERIFIER_assert(int cond) { if (!(cond)) { ERROR: goto ERROR; } return; }


typedef enum { FALSE = 0, TRUE = 1 } BOOLEAN;

BOOLEAN INIT;
float P, X;

float RANDOM_INPUT()
{
  float x;
  x = __VERIFIER_nondet_float();
  __VERIFIER_assume(x >= -10.f && x <= 10.f);
  return x;
}

void filter2 () 
{
  static float E[2], S[2];
  if (INIT) {
    S[0] = X; 
    P = X; 
    E[0] = X;
  } else {
    P = (((((0.4677826f * X) - 
            (E[0] * 0.7700725f)) +
           (E[1] * 0.4344376f)) + 
          (S[0] * 1.5419f)) - 
         (S[1] * 0.6740477f));
    __VERIFIER_assert(P >= -15.f && P <= 15.f);

  }
  E[1] = E[0]; E[0] = X;
  S[1] = S[0]; S[0] = P;
}

void main () 
{
  X = RANDOM_INPUT();
  INIT = TRUE;
  while (TRUE) {
    X = RANDOM_INPUT();
    filter2 ();
    INIT = FALSE;
  }
}

