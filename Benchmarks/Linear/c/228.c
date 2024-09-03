//svcomp_diamond_1-1
int main() {
    int x;
    int y;

    //pre-condition
    x = 0;
    
    //loop-body
    while (x < 99) {
        if(y % 2 == 0){
            x = x + 2;
        } 
        else{
            x = x + 1;
        }
    }

    //post-condition
    assert((x % 2) == (y % 2));
}