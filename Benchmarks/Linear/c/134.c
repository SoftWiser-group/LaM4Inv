//SyGuG2018_brett
int main(){
    int p;
    int c;
    int cl;
    
    //pre-condition
    (p = 0);
    (c = cl);

    while(((p < 4) && (cl > 0))){
        (cl = cl - 1);
        (p = p + 1);
    }

    //post-condition
    if((p != 4))
        assert((c < 4));
}