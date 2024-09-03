//svcomp_mine2017-ex4.10
int main(){
    int v;

    //pre-condition
    v = 1;

    //loop-body
    while (v <= 50) {
        v = v + 2;
    }

    //post-condition
    assert(v <= 52);
}
