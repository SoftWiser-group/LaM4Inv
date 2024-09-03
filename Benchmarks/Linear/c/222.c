//svcomp_eq2
int main(){
    int w;
    int x;
    int y;
    int z;

    //pre-condition
    x = w;
    z = x + 1;
    y = w + 1;
    assume(x > 0);
    assume(y > 0);
    assume(z > 0);
    assume(w > 0);

    //loop-body
    while (unknown()) {
        y = y + 1;
        z = z + 1;
    }

    //post-conditon
    assert(y == z);
}
