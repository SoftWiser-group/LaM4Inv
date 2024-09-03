//svcomp_benchmark49_linear
int main(){
    int i;
    int j;
    int r;

    //pre-condition
    assume(r > i + j);

    //loop-body
    while (i > 0) {
        i = i - 1;
        j = j + 1;
    }

    //post-condition
    assert(r > i + j);
}