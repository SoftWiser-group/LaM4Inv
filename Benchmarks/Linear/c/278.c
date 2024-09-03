//svcomp_benchmark27_linear
int main(){
    int i;
    int k;
    int j;

    //pre-condition
    assume(k > i - j);
    assume(i < j);

    //loop-body
    while (i < j) {
        k = k + 1;
        i = i + 1;
    }

    //post-condition
    assert(k > 0);
}