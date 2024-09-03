//svcomp_benchmark02_linear
int main(){
    int n;
    int i;
    int l;

    //pre-condition
    i = l;
    assume(l > 0);

    //loop-body
    while (i < n) {
        i = i + 1;
    }

    //post-condition
    assert(l >= 1);
}
