//svcomp_benchmark14_linear
int main(){
    int i;

    //pre-condition
    assume(i >= 0);
    assume(i <= 200);

    //loop-body
    while (i > 0) {
        i = i - 1;
    }

    //post-condition
    assert(i >= 0);
}