//
// Created by root on 19-12-21.
//

#include "sort.h"

void merge(int *a, int *b, int length, int *tmpArr) {
    int i = 0, j = 0;
    for (int k = 0; k < length * 2; ++k) {
        if (a[i] < b[j]) tmpArr[k] = a[i++];
        else tmpArr[k] = b[j++];
    }
    for (int k = 0; k < length; ++k) {
        a[k] = tmpArr[k];
        b[k] = tmpArr[k + length];
    }
}