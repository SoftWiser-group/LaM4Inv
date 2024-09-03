//svcomp_benchmark05_conjunctive
int main(){
    int x;
    int y;
    int n;

    //pre-condition
    assume(x >= 0); 
    assume(x <= y); 
    assume(y < n); 

    //loop-body
    while (x < n) {
        x = x + 1;
        if(x > y)
            y = y + 1;
    }

    //post-condition
    assert(y == n);
}
