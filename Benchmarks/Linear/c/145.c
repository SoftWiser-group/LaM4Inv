//SyGuG2018_cggmp2005_variant_true-unreach-call_true-termination
int main(){
    int lo;
    int mid;
    int hi;

    //pre-condition
    assume(mid > 0);
    lo = 0;
    hi = 2 * mid;
    
    //loop-body
    while(mid > 0){
        lo = lo + 1;
        hi = hi - 1;
        mid = mid - 1;
    }

    //post-condition
    assert(lo == hi);
}