int main(){
    // variable declarations
    int x, y;
    int q, r;
    //precondition
    assume(x>0);
    assume(y>0);
    assume(q==0);
    assume(r==0);
    // loop body
    while(x > y * q + r) {
        if (r == y - 1){
            r = 0;
            q += 1;
        }
        r += 1;
    }
    // post-condition
    //assert(r == x % y);
    //assert(q == x / y);
    assert(x == q*y+r);
}
