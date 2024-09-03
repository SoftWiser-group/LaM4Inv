//svcomp_nested-3
int main() {
    int last;
    int a;
    int b;
    int c;
    int st;

    //pre-condition
    a = 0;
    b = 0;
    c = 200000;
    assume((st == 0 && last < c) || (st == 1 && last >= c));

    //loop-body
    while(unknown()){
        if(st == 0 && c == last + 1){
			a = a + 3; 
            b = b + 3;
        }
		else{	
            a = a + 2; 
            b = b + 2; 
        } 
		if(c == last && st == 0){
            a = a + 1;
            c = c + 1;
        } 
            
    }

    //post-condition
    assert(a == b);
}