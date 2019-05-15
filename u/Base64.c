#include "Base64Lib.h"

//#define F_COUNT_SIZE 1
//
// Created by zhc on 2019/5/11.
//


int main(int argc, char *argv[]) {
    if (argc <= 1) return 0;
    if (argc == 2) {
        eD(argv[1]);
        return 0;
    } else if (argc >= 3) {
        int fM = Str_Cmp_nMatchCase(argv[argc - 1], "-f");
        if (Str_Cmp_nMatchCase(argv[1], "-decode")) {
            sDT();
            if (!fM) dD(argv[2]);
            else {
                //d

            }
        } else {
            if (!fM) eD(argv[2]);
            else {
                //e
                FILE *fp = NULL, *fpO = NULL;
                if ((fp = fopen(argv[2], "rb")) == NULL) return -1;
                char oN[strlen(argv[2]) + 14];
                strcpy(oN, argv[2]);
                strcat(oN, ".Base64.O.txt");
                if ((fpO = fopen(oN, "wb")) == NULL) return -1;
                dl fS = getFileSize(fp);
                printf("%s", "Encoding...\n");

            }
        }
    }
    return 0;
}