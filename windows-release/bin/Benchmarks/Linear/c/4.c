int main()
{
    int x = 0;
    int y, z;

    while(x < 500) {
       x += 1;
       if( z <= y) {
          y = z;
       }
    }

    //post-condition
    assert (z >= y);
}
