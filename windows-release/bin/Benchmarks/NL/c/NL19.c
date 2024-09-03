int main(){
     // variable declarations
     int k,y,x,c;

     //precondition
     assume( k>=0 );
     assume( k<=30 ); //if too large then overflow
     assume( y == 0);
     assume( x == 0);
     assume( c == 0);

     // loop body
     while(c < k){
	  //assert(-2*pow(y,6) - 6*pow(y,5) - 5*pow(y,4) + pow(y,2) + 12*x == 0.0); //DIG Generated  (but don't uncomment, assertion will fail because of int overflow)	  
      //assert(c <= k);
      //%%%traces: int x, int y, int k
	  c = c + 1 ;
	  y = y + 1;
	  x=y*y*y*y*y+x;
     }

     // post-condition
     assert(-2*(k*k*k*k*k*k) - 6*(k*k*k*k*k) - 5*(k*k*k*k) + (k*k) + 12*x == 0);

}