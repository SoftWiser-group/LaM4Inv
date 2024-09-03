//svcomp_benchmark47_linear
int main(){
    int x;
    int y;

    //pre-condition
    assume(x < y);
    assume(y <= 20000001);

    //loop-body
    while (x < y) {
        if (x < 0){
            x = x + 7; 
        }
        else {
            x = x + 10;
        }
        if (y < 0){
            y = y - 10;
        } 
        else {
            y = y + 3;
        }

    }

    //post-condition
    assert(x <= y + 16);
}