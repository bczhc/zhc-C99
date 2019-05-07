//
// Created by zhc on 2019/5/3.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <ctype.h>
#include <io.h>
#include <time.h>
#include <string.h>

#ifndef C99_A_H
#define C99_A_H
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

long long getFileSize(FILE *fp) {
    long long sz;
    fseek(fp, 0L, SEEK_END);
    sz = (long long) ftell(fp);
    if (sz == -1) {
        sz = _ftelli64(fp);
    }
    fseek(fp, 0L, SEEK_SET);
    return sz;
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

char *substring(char *Dest, const char *source, const int beginIndex, const int endIndex) {
    char *r = Dest;
    strncpy(r, source + beginIndex, (size_t) (endIndex - beginIndex));
    return Dest;
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

int BinToDec(const char *NumStr) {
    int r = 0;
    int j = 0;
    for (int i = strlen(NumStr) - 1; i >= 0; --i) {
        r += (NumStr[i] == '0' ? 0 : 1) * pow((double) 2, (double) j);
        j++;
    }
    return r;
}

char *ToUpperCase(char *Dest, const char *string) {
    char *p = Dest;
    int len = strlen(string);
    char r[len + 1];
    int i = 0;
    while (1) {
        r[i] = (char) toupper((int) string[i]);
        if (string[i] == '\0') break;
        i++;
    }
    strcpy(p, r);
    return Dest;
}
#endif //C99_A_H
