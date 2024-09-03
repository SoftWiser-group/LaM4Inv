//svcomp_Mono4_1
int main(){
    int x;
    int y;

    //pre-condition
    x = 0;
    y = 500000;

    //loop-body
    while(x < 1000000) {
	    if (x < 500000) {
	        x = x + 1;
	    } 
        else {
            x = x + 1;
            y = y + 1;
	    }
    }

    //post-condition
    assert(y == x);
}