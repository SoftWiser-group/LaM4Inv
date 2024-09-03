//svcomp_Mono3_1
int main(){
    unsigned int x;
    unsigned int y;

    //pre-condition
    x = 0;
    y = 0;

    //loop-body
    while (x < 1000000) {
        if (x < 500000) {
	        y++;
        } 
        else {
	        y--;
        }
	    x++;
    }


    //post-condition
    assert(y == 0);
}