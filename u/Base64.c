#include "Base64Lib.h"
#include <pthread.h>

#define F_COUNT_SIZE 1
//
// Created by zhc on 2019/5/11.
//

int main(int argc, char *argv[]) {
    /*char *f = "C:\\Users\\zhc\\Downloads\\a.txt";
    char *fO = "C:\\Users\\zhc\\Downloads\\o.txt";
    FILE *fp = NULL;
    FILE *fpO = NULL;
    if ((fp = fopen(f, "rb")) == NULL) return -1;
    if ((fpO = fopen(fO, "wb")) == NULL) return -1;
    pthread_t t[4] = {(pthread_t) NULL};
//    long long fS = getFileSize()
    __int64 fS = getFileSize(fp);

    char r[12] = {0};
    fread(r, 12, F_COUNT_SIZE, fp);
    PrintArr(r, ARR_len(r));*/
    char *sR = NULL;
    Scanf(&sR);
    int n[4];
    int i = 0;
    int sL = strlen(sR);
    printf("length: %i\n", sL);
    int eL = sL - sL % 3;
    while (eL > 0) {
        n[0] = (sR[i] & 0xFF) >> 2;
        n[1] = (((sR[i] & 0xFF) << 4) & 0x30) | (sR[i + 1] & 0xFF) >> 4;
        n[2] = (((sR[i + 1] & 0xFF) << 2) & 0x3C) | (sR[i + 2] & 0xFF) >> 6;
        n[3] = (sR[(i += 3) - 1] & 0xFF) & 0x3F;
        eL -= 3;
        printf("%c", encodeTable[n[0]]);
        printf("%c", encodeTable[n[1]]);
        printf("%c", encodeTable[n[2]]);
        printf("%c", encodeTable[n[3]]);
    }
    return 0;
}