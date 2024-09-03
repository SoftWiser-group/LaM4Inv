//svcomp_phases_2-1
int main() {
    unsigned int x;
    unsigned int y;

    //pre-condition
    x = 2;
    assume(y > 2);

    //loop-body
    while (x < y) {
        if (x < y / x) {
            x *= x;
        } 
        else {
            x++;
        }
    }

    //post-condition
    assert(x == y);

}