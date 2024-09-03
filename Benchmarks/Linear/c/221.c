//svcomp_eq1
int main() {
    int w;
    int x;
    int y;
    int z;

    //pre-condition
    x = w;
    z = y;
    assume(x > 0);
    assume(y > 0);
    assume(z > 0);
    assume(w > 0);

    while(unknown()) {
        if (unknown()) {
            w = w + 1; 
            x = x + 1;
        } 
        else {
            y = y - 1; 
            z = z - 1;
        }
    }

    //post-condition
    assert(y == z);
}
