//
// Created by root on 19-9-7.
//

#include "BigDecimal.h"
#include "../zhc.h"

char *BDAdd(char **dest, const char *n1, int n1_len, const char *n2, int n2_len) {
    int n1_dotIndex = firstIndexOf(n1, n1_len, '.'), n2_dotIndex = firstIndexOf(n2, n2_len, '.'), notHaveDot = 0x0;
    n1_dotIndex = n1_dotIndex == -1 ? notHaveDot |= 1 << 7, n1_len : n1_dotIndex
            , n2_dotIndex = n2_dotIndex == -1 ? notHaveDot |= 1, n2_len : n2_dotIndex;
    int temp = 0, n1_dotRightLen = n1_len - n1_dotIndex - (notHaveDot >> 7 == 0)
    , n2_dotRightLen = n2_len - n2_dotIndex - ((notHaveDot & 0x1) == 0)
    , dotRightLenBigger = getBiggerNum(n1_dotRightLen, n2_dotRightLen), r
    , dotLeftLenBigger = getBiggerNum(n1_dotIndex, n2_dotIndex), r_len = dotLeftLenBigger + dotRightLenBigger + 3
    , rI = r_len - 1;
    *dest = (char *) malloc((size_t) r_len);
    memset(*dest, '0', r_len);
//    (*dest)[r_len - 1] = '\0';
    for (int i = dotRightLenBigger; i > 0; --i) {
        r = (i > n1_dotRightLen ? 0 : m_ctoi(n1[n1_dotIndex + i])) +
            (i > n2_dotRightLen ? 0 : m_ctoi(n2[n2_dotIndex + i])) + temp;
        temp = r / 10;
        (*dest)[/*r_len - 1 - dotRightLenBigger + i*/rI] = m_itoc(r % 10);
        --rI;
    }
    (*dest)[/*r_len - 1 - dotRightLenBigger*/rI] = '.';
    --rI;
    int n1DI, n2DI;
    for (int i = dotLeftLenBigger - 1; i >= 0; --i) {
        n1DI = n1_dotIndex - dotLeftLenBigger + i, n2DI = n2_dotIndex - dotLeftLenBigger + i;
        r = (n1DI < 0 ? 0 : m_ctoi(n1[n1DI])) + (n2DI < 0 ? 0 : m_ctoi(n2[n2DI])) + temp;
        temp = r / 10;
        (*dest)[/*i + 1*/rI] = m_itoc(r % 10);
        --rI;
    }
    (*dest)[0] = m_itoc(temp);
    if ((*dest)[r_len - 1] == '.') (*dest)[r_len - 1] = '\0';
    for (int j = 0; j < r_len; ++j) {
        if ((*dest)[j] != '0') return (char *) (*dest + j);
    }
    return *dest;
}

char *BDMultiply(char **dest, const char *n1, int n1_len, const char *n2, int n2_len) {
    return *dest;
}


int main() {
    char *r = NULL;
    char *n1 = "1";
    char *n2 = "3";
    printf("%s\n", BDAdd(&r, n1, strlen(n1), n2, strlen(n2)));
}