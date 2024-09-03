int main(){
     // variable declarations
     int k,y,x,c;
     //precondition
     assume(y == 0);
     assume(x == 0);
     assume(c == 0);
     assume(k >= 0);
     assume(k <= 30);

     // loop body
     while(c < k){
      //assert(2 * x - y * y - y == 0);
      //assert(c <= k);
      //assert(y == c);
	  //%%%traces: int x, int y, int k
	  c = c + 1;
	  y = y + 1;
	  x = y + x;
     }

     // post-condition
     assert(2 * x - k * k - k == 0);
}


