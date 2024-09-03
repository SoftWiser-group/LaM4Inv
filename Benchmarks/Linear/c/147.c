//SyGuG2018_ex1
int main(){
    int x;
    int y;
    int xa;
    int ya;

    //pre-condition
    xa = 0;
    ya = 0;

    //loop-body
    while(unknown()){
        x = xa + ya * 2 + 1;
        if(unknown()){
            y = ya - xa * 2 + x;
        }
        else{
            y = ya - xa * 2 - x;
        }
        xa = x - y * 2;
        ya = x * 2 + y;
    }
    
    //post-condtion
    assert(xa + ya * 2 >= 0);
}