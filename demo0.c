#include "./u/sort.h"

int tmp[8];

int main() {
    int a[] = {2, 3};
    int b[] = {1, 5};
    int length = 2;
    merge(a, b, length, tmp);
    for (int i = 0; i < length; ++i) {
        printf("%i ", a[i]);
    }
    printf("%c", '\n');
    for (int i = 0; i < length; ++i) {
        printf("%i ", b[i]);
    }
    return 0;
}