//svcomp_mine2017-ex4.6
int main(){
    int x;

    //pre-condition
    x = 40;

    //loop-body
    while (x != 0) {
        x = x - 1;
    }

    //post-condition
    assert(x == 0);
}
