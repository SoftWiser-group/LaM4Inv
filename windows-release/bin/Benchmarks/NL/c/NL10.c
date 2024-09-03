int main(){
     // variable declarations
     int x, y, c, z, k;
     //precondition
     assume(z>=0);
     assume(z<=10);
     assume(k>0);
     assume(k<=10);
     assume(x == 1);
     assume(y == 1);
     assume(c == 1);

     // loop body
     while (c < k){
	  c = c + 1;
	  x = x*z + 1;
	  y = y*z;
     }
     // post-condition
     assert(1+x*z-x-z*y==0);
}

