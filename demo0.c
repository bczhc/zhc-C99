#include "u/Base64Lib.h"

int main(int argc, char *argv[]) {
    if (argc == 1)
        return 0;
    FILE *fp = fopen(argv[1], "rb");
    FILE *fpO = fopen("D:\\s.O.txt", "wb");
    dl fS = getFileSize(fp);
    dl a = fS / 1023LL;
    usi b = (usi) (a % 1023LL);
    char R[R_S];
    char r[1023];
    for (int i = 0; i < a - 1; ++i) {
        if (!(i % 2000)) printf("%f\n", ((double) i / (double) a) * 100);
        fread(r, 1023, 1, fp);
        int rL = e_1023P(R, r, 1023);
        fwrite(R, rL, 1, fpO);
    }
    fread(r, b, 1, fp);
    int rL = e_1023P(R, r, b);
    fwrite(R, rL, 1, fpO);
    return 0;
}