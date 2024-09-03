//svcomp_benchmark08_conjunctive
int main(){
    int i;
    int sum;
    int n;

    //pre-condition
    assume(n >= 0); 
    sum = 0; 
    i = 0; 

    //loop-body
    while (i < n) {
        sum = sum + i;
        i = i + 1;
    }

    //post-condition
    assert(sum >= 0);
}