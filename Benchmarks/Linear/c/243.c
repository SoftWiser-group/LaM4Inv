//svcomp_mod3
int main() {
    unsigned int x;
    unsigned int y;

    //pre-condition
    y = 1;

    //loop-body
    while(unknown()){
        if(x % 3 == 1){
            x = x + 2; 
            y = 0;
        }
        else{
            if(x % 3 == 2){
                x = x + 1; 
                y = 0;
            }
            else{
                if(unknown()){
                    x = x + 4; 
                    y = 1;
                }
                else{
                    x = x + 5; 
                    y = 1;
                }
            }
        }
    }

    //post-condition
    if(y == 0)
        assert(x % 3 == 0);
}