
int main(){
     // variable declarations
     int x,y,z,a,b;

     //precondition
     assume(a >= 0);
     assume(b >= 0);
     assume(x == a);
     assume(y == b);
     assume(z == 0);

     // loop body
     while(y!=0) {
	  //assert(z+x*y==a*b);
	  //%%%traces: int a, int b, int x, int y, int z
	  
	  if (y%2 ==1 ){
	       z = z+x;
	       y = y-1;
	  }
	  x = 2*x;
	  y = y/2;
     }

     // post-condition
     assert(z == a*b);
}

