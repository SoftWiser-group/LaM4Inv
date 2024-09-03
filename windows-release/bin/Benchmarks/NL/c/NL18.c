int main(){
     // variable declarations
     int k,y,x,c;
     //precondition
     assume( k>= 0 );
     assume( k <= 30 ); //if too large then will cause overflow
     assume( y == 0 );
     assume( x == 0 );
     assume( c = 0 );

     // loop body
     while(c < k){
	  //assert(6*y*y*y*y*y + 15*y*y*y*y+ 10*y*y*y - 30*x - y == 0);
      //assert(c <= k);
      //assert(c == y);
	  //%%%traces: int x, int y, int k
	  c = c +1 ;
	  y = y +1;
	  x = y*y*y*y+x;
     }

     // post-condition
     assert(6*k*k*k*k*k + 15*k*k*k*k+ 10*k*k*k - 30*x - k == 0);
}
