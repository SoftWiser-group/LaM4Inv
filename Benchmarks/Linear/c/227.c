//svcomp_diamond_2-2
int main() {
    int x;
    int y;

    //pre-condition
    x = 0;
    
    //loop-body
    while (x < 99) {
        if (y % 2 == 0) 
            x += 10;
        else 
            x -= 5;
    }

    //post-condition
    assert((x % 2) == (y % 2));
}