//
// Created by root on 19-8-16.
//
#include "../zhc.h"
#include "cmpDate.h"

/**
 * compare date
 * @param dateSrcStr "yyMMdd"
 * @param date "yyMMdd"
 * @return date is early than srcDate: -1;
 *         date is same as srcDate: 0;
 *         date is later than srcDate: 1
 */
int cmpDate(const char *date, const char *dateSrcStr) {
    char ***s = (char ***) malloc((size_t) (sizeof(char **) * 2));
    for (int i = 0; i < 2; ++i) {
        s[i] = (char **) malloc((size_t) (sizeof(char *) * 3));
        for (int j = 0; j < 3; ++j) {
            s[i][j] = (char *) malloc((size_t) 2);
        }
    }
    for (int l = 0; l < 2; ++l) {
        for (int k = 0; k < 3; ++k) {
            for (int i = 0; i < 2; ++i) {
                s[l][k][i] = l ? dateSrcStr[i + 2 * k] : date[i + 2 * k];
            }
        }
    }
    for (int m = 0; m < 3; ++m) {
        int i1 = charArrToInt(s[0][m], 2), i2 = charArrToInt(s[1][m], 2);
        if (i1 != i2) return i1 < i2 ? -1 : 1;
    }
    return strcmp(date, dateSrcStr);
}

int main() {
    const char *d1 = "190216", *d2 = "190228";
    int r = cmpDate(d1, d2);
    printf("%i\n", r);
}