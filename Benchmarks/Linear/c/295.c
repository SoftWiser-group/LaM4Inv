//svcomp_Mono1_1-2
int main(){
    unsigned int x;

    //pre-condition
    x = 0;

    //loop-body
    while (x < 100000000) {
        if (x < 10000000) {
            x++;
        } 
        else {
            x += 2;
        }
    }


    //post-condition
    assert(x == 100000000);
}