int main() {
  // variable declarations
  int n;
  int x;
  // pre-conditions
  (x = n);
  // loop body
  while ((x > 1)) {
    {
    (x  = (x - 1));
    }

  }
  // post-condition
//if ( (n >= 0) ) before revision
if ( (n >= 1) )
assert( (x >= 1) );

}
