int main(){
  // variable declarations
  int n,x,y,z,a;
  //precondition
  assume(n==0);
  assume(x==0);
  assume(y==1);
  assume(z==6);
  assume(a>=n);
  // loop body
  while(n<=a){
       //assert(z == 6*n + 6);
       //assert(y == 3*n*n + 3*n + 1);
       //assert(x == n*n*n);
       //assert(n <= a+1);
       //%%%traces: int a, int n, int x, int y, int z
       n=n+1;
       x=x+y;
       y=y+z;
       z=z+6;
  }
  // post-condition
  assert( (n==a+1) && (y == 3*n*n + 3*n + 1) && (x == n*n*n) && (z == 6*n + 6));
}