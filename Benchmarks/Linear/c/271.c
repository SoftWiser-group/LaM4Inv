//svcomp_benchmark12_linear
int main(){
    int x;
    int y;
    int t;

    //pre-condition
    y = t; 
    assume(x != y);

    //loop-body
    while (unknown()) {
        if(x > 0)
            y = y + x;
    }

    //post-condition
    assert(y >= t);
}