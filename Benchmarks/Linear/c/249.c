//svcomp_css2003
int main(){
    int i;
    int j;
    int k;

    //pre-condition
    i = 1;
    j = 1;
    assume(k >= 0);
    assume(k <= 1);

    //loop-body
    while (unknown()) {
        i = i + 1;
        j = j + k;
        k = k - 1;
    }

    //post-condition
    assert(1 <= i + k);
}
