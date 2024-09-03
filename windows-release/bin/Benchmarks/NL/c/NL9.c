int main(){
     // variable declarations
     int z, k, x, y, c;
     //precondition
     assume(z>=0);
     assume(z<=10);
     assume(k > 0);
     assume(k<=10);
     assume(x==1);
     assume(y==z);
     assume(c==1);

     // loop body
     while (c < k){
	  c = c + 1;
	  x = x*z + 1;
	  y = y*z;
     }
     // post-condition
     assert(x*z - x - y + 1 == 0);
}
