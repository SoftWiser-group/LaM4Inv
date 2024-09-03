//svcomp_simple_3-1
int main() {
    unsigned int x;
    unsigned short N;

    //pre-condition
    x = 0;

    //loop-body
    while (x < N) {
        x += 2;
    }

    //post-condition
    assert(x % 2 == 0);

}