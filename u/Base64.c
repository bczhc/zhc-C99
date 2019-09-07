#include "Base64Lib.h"

//#define F_COUNT_SIZE 1

//
// Created by zhc on 2019/5/11.
//


int main(int argc, char *argv[]) {
    if (argc <= 1) return 0;
    if (argc == 2) {
        char *R = NULL;
        eD(&R, argv[1]);
        printf("\n%s\n", R);
        free(R);
        return 0;
    } else if (argc >= 3) {
        int fM = Str_Cmp_nMatchCase(argv[argc - 1], "-f");
        if (Str_Cmp_nMatchCase(argv[1], "-decode")) {
            initDT();
            char *fN = argv[2];
            if (!fM) {
                char *R = NULL;
                dD(&R, fN);
                printf("\n%s\n", R);
            } else {
                //d
                FILE *fp, *fpO;
                if ((fp = fopen(fN, "rb")) == NULL) return -1;
                char fp_O_N[strlen(fN) + 14];
                strcpy(fp_O_N, fN);
                strcat(fp_O_N, ".Base64dO.txt");
                if ((fpO = fopen(fp_O_N, "wb")) == NULL) return -1;
                dl fS = getFileSize(fp);
                dl a = fS / 1024LL;
                usi b = (usi) (fS % 1024LL);
                char R[W_R];
                char r[1024];
                printf("Decoding...\n");
                for (int i = 0; i < a - 1; ++i) {
                    if (!(i % 2000)) printf("%f\n", ((double) i / (double) a) * 100);
                    fread(r, 1024, 1, fp);
                    d_1024P(R, r, 1024);
                }
                fread(r, b, 1, fp);
                d_1024P(R, r, b);
            }
        } else {
            char *fN = argv[2];
            if (!fM) eD(NULL, fN);
            else {
                //e
                FILE *fp, *fpO;
                if ((fp = fopen(fN, "rb")) == NULL) return -1;
                char fpO_N[strlen(fN) + 14];
                strcpy(fpO_N, fN);
                strcat(fpO_N, ".Base64eO.txt");
                if ((fpO = fopen(fpO_N, "wb")) == NULL) return -1;
                dl fS = getFileSize(fp);
                dl a = fS / 1023LL;
                usi b = (usi) (fS % 1023LL);
                char R[R_S];
                char r[1023];
                printf("%s", "Encoding...\n");
                for (int i = 0; i < a - 1; ++i) {
                    if (!(i % 2000)) printf("%f\n", ((double) i / (double) a) * 100);
                    fread(r, 1023, 1, fp);
                    int rL = e_1023P(R, r, 1023);
                    fwrite(R, rL, 1, fpO);
                }
                if (b) {
                    fread(r, b, 1, fp);
                    int rL = e_1023P(R, r, b);
                    fwrite(R, rL, 1, fpO);
                }
                fclose(fp);
                fclose(fpO);
                printf("Done!\n");
            }
        }
    }
    return 0;
}
