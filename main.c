#include <stdio.h>
#include <stdlib.h>

int main() {
    char s[8] = {1, 2, 3};
    FILE *fp = fopen("C:\\zhc\\f\\e_", "wb");
    fwrite(s, 8, 1,fp);
    return 0;
}