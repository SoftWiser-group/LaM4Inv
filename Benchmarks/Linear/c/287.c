//svcomp_benchmark43_conjunctive
int main(){
    int x;
    int y;

    //pre-condition
    assume(x < 100);
    assume(y < 100);

    //loop-body
    while (x < 100 && y < 100) {
        x = x + 1;
        y = y + 1;
    }

    //post-condition
    assert(x == 100 || y == 100);
}