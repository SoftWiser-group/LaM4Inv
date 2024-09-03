//svcomp_benchmark44_disjunctive
int main(){
    int x;
    int y;

    //pre-condition
    assume(x < y);
    assume(y <= 20000001);

    //loop-body
    while (x < y) {
        if ((x < 0 && y < 0)){
            x = x + 7; 
            y = y - 10;
        }
        else if ((x < 0 && y >= 0)){
            x = x + 7; 
            y = y + 3;
        } 
        else {
            x = x + 10; 
            y = y + 3;
        }

    }

    //post-condition
    assert(x >= y);
}