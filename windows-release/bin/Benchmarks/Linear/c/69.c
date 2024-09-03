

int main() {
    int n;
    int x = 1;
    int y;

    while (x <= n) {
        y = n - x;
        x = x +1;
    }

    //post-condition
    if (n > 0) {
      assert (y >= 0);
      //assert (y < n);
    }
}
