#include "u/Base64Lib.h"

int main() {
    FILE *fp = fopen("D:\\s.txt", "rb");
    char r[READ_SIZE]; //1023
    fread(r, READ_SIZE, 1, fp);
    e_1023P(r, READ_SIZE, 6);
    return 0;
}