
int main(){
     // variable declarations
     int k, y, x, c;

     //precondition
     assume( k>=0 );
     assume( k<=30 );
     assume( y == 0 );
     assume( x == 0 );
     assume( c == 0 );

     // loop body
     while(c < k){
	  //assert(4*x-(y*y*y*y)-2*(y*y*y)-(y*y) == 0);
      //assert(c <= k);
      //assert(c == y);
	  //%%%traces: int x, int y, int k
	  c = c +1 ;
	  y = y +1;
	  x=y*y*y+x;
     }
     // post-condition
     assert(4*x-(k*k*k*k)-2*(k*k*k)-(k*k) == 0);
}

