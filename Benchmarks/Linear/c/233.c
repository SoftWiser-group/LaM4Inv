//svcomp_simple_1-1
int main() {
    unsigned int x;

    //pre-condition
    x = 0;

    //loop-body
    while (x < 268435455) {
        x += 2;
    }

    //post-condition
    assert(x % 2 == 0);

}