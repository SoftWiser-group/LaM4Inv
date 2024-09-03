//svcomp_gr2006
int main(){
    int x;
    int y;

    //pre-condition
    x = 1;
    y = 1;

    //loop-body
    while (y > 0) {
        if (x < 50){
            y++;
        } 
        else{
            y--;
        }
        x = x + 1;
    }

    //post-condition
    assert(x == 100);
}