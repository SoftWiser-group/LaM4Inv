//svcomp_benchmark29_linear
int main(){
    int x;
    int y;

    //pre-condition
    assume(x < y);

    //loop-body
    while (x < y) {
        x = x + 100;
    }

    //post-condition
    assert(x >= y);
}