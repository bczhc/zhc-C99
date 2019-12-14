//
// Created by root on 19-11-30.
//

#include "strdic.h"
#include "../zhc.h"


void strdic(const char *dic_s, int dic_s_length, int length, void (*f)(char *, void *), void *args) {
    if (dic_s_length == -1) dic_s_length = strlen(dic_s);
    dl l = m_pow(dic_s_length, length);
    int ints[length];
    memset(ints, 0, sizeof(int) * length);
    int rI = 0;
    for (int m = 0; m < length; ++m) {
        ints[m] = 0;
    }
    char r[length + 1]; //size
    r[length] = 0;
    for (dl i = 0; i < l; ++i) {
        rI = 0;
        for (int j = 0; j < length; ++j) {
            r[rI] = dic_s[ints[j]];
            ++rI;
        }
        f(r, args);
        for (int k = length - 1; k > 0; --k) {
            if ((ints[k] += 1) == dic_s_length) {
                ints[k] = 0;
                if (k != 1) continue;
                ints[k - 1] += 1;
            } else break;
        }
    }
}