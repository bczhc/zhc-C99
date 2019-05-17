//
// Created by zhc on 2019/5/3.
//

#include <io.h>
#include <time.h>
#include "../zhc.h"

#ifndef C99_A_H
#define C99_A_H
#endif //C99_A_H
static int DivideR_len = 0;
static char DivideR[8][9] = {{""}};


int IntegerLen(const int x) {
    int n = x;
    int r = 0;
    while (1) {
        int b = n / 10;
        r++;
        n = b;
        if (!b) break;
    }
    return r;
}

char *NewFileName(char *Dest, const char *filePath) {
    char *r = Dest;
    char newFN[strlen(filePath) + 5];
    int x = 2;
    while (1) {
        char xS[IntegerLen(x) + 1];
        itoa(x, xS, 10);
        strcpy(newFN, filePath);
        strcat(newFN, " (");
        strcat(newFN, xS);
        strcat(newFN, ")");
        if (access(newFN, F_OK) == EOF) break;
        x++;
    }
    strcpy(r, newFN);
    return Dest;
}


char *NumStr_lenTo(char *Dest, const char *source, const int len_to) {
    char *r = Dest;
    char s[len_to + 1];
    strcpy(s, "");
    for (int i = 0; i < len_to - strlen(source); ++i) {
        strcat(s, "0");
    }
    strcat(s, source);
    strcpy(r, s);
    return r;
}


int String_56_DivideInto(const char *source, const int per_char_split__7_or_8) {
    int source_l = strlen(source);
    if (source_l != 56 && source_l != 57) return 1;
    DivideR_len = 56 / per_char_split__7_or_8;
    for (int i = 0; i < DivideR_len; ++i) {
        substring(DivideR[i], source, per_char_split__7_or_8 * i, per_char_split__7_or_8 * (i + 1));
    }
    return 0;
}

/*void printArr(const char *a, const int length) {
    int l = length;
    printf("[");
    for (int i = 0; i < l; ++i) {
        printf("%i", (int) a[i]);
        if (i != l - 1) {
            printf(",");
        }
    }
    printf("]\n");
}*/

void e1(char *Dest, const char buf[7]) {
    Dest[0] = (buf[0] & 255) >> 1;
    Dest[1] = ((buf[0] & 1) << 6) | ((buf[1] & 255) >> 2);
    Dest[2] = ((buf[1] & 3) << 5) | ((buf[2] & 255) >> 3);
    Dest[3] = ((buf[2] & 7) << 4) | ((buf[3] & 255) >> 4);
    Dest[4] = ((buf[3] & 15) << 3) | ((buf[4] & 255) >> 5);
    Dest[5] = ((buf[4] & 31) << 2) | ((buf[5] & 255) >> 6);
    Dest[6] = ((buf[5] & 63) << 1) | ((buf[6] & 255) >> 7);
    Dest[7] = buf[6] & 127;
}























