#include <pthread.h>
#include <stdio.h>
#include "zhc.h"

int main() {
    char *a = NULL, *b = NULL;
    Scanf(&a);
    Scanf(&b);
    char **dst = NULL;
    int c = Split(&dst, a, -1, b, -1);
    for (int i = 0; i < c; ++i) {
        printf("%s\n", dst[i]);
    }
}