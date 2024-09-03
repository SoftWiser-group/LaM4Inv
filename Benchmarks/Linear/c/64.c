
int main() {
    int x = 1;
    int y;

    while (x <= 10) {
        y = 10 - x;
        x = x +1;
    }

    //post-condition
    //assert (y >= 0);
    assert (y < 10);
}
