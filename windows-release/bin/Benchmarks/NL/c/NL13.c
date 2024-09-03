
int main(){
     // variable declarations
     int a,b,p,q,x,y;

     //precondition
     assume(x>=1);
     assume(y>=1);
     assume(a == x);
     assume(b == y);
     assume(p == 1);
     assume(q == 0);

	 // loop body
     while(a!=0 && b!=0) {
	  //assert(q+a*b*p==x*y);
	  //%%%traces: int x, int y, int a, int b, int p, int q
	  if (a % 2 ==0 && b % 2 ==0 ){
	       a = a/2;
	       b = b/2;
	       p = 4*p;
	  }
	  else if (a % 2 ==1 && b % 2 ==0 ){
	       a = a-1;
	       q = q+b*p;
	  }
	  else if (a % 2 ==0 && b % 2 ==1 ){
	       b = b-1;
	       q = q+a*p;
	  }
	  else {
	       a = a-1;
	       b = b-1;
	       q = q+(a+b+1)*p;
	  }
     }
     // post-condition
     assert(q == x*y);
}
