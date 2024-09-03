//svcomp_benchmark28_linear
int main(){
    int i;
    int j;

    //pre-condition
    assume(i >= 1);
    assume(j >= 1);
    assume(i * i < j * j);

    //loop-body
    while (i < j) {
        j = j - i;
        if (j < i) {
            j = j + i;
            i = j - i;
            j = j - i;
        }
    }

    //post-condition
    assert(j == i);
}