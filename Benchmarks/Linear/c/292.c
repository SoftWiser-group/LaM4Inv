//svcomp_benchmark48_linear
int main(){
    int i;
    int j;
    int k;

    //pre-condition
    assume(i < j);
    assume(k > 0);

    //loop-body
    while (i < j) {
        k = k + 1;
        i = i + 1;
    }

    //post-condition
    assert(k > j - i);
}