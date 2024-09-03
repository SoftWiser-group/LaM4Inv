//svcomp_benchmark09_conjunctive
int main(){
    int x;
    int y;

    //pre-condition
    assume(y >= 0); 
    x = y;

    //loop-body
    while (x != 0) {
        x = x - 1;
        y = y - 1;
    }

    //post-condition
    assert(y == 0);
}