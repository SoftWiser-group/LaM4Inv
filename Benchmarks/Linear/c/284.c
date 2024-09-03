//svcomp_benchmark39_conjunctive
int main(){
    int x;
    int y;

    //pre-condition
    assume(y >= 0);
    assume(y <= 20000001);
    x = 4 * y;


    //loop-body
    while (x > 0) {
        x -= 4;
        y--;
    }

    //post-condition
    assert(y >= 0);
}