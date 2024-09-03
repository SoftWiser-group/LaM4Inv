
int main(){
     // variable declarations
     int n,a,s,t;

     //precondition
     assume(n >= 0);
     assume(a==0);
     assume(s==1);
     assume(t==1);

     // loop body
     while(s <= n){
	  //assert(t == 2*a + 1);
	  //assert(s == (a + 1)*(a + 1));
	  //the above 2 should be equiv to t^2 - 4*s + 2*t + 1 == 0
      //assert(a*a <= n);
	  
	  //%%%traces: int a, int n, int t, int s
	  a=a+1;
	  t=t+2;
	  s=s+t;
     }

     // post-condition
     assert( n < (a + 1) * (a + 1));
}
