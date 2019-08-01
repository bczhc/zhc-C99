//
// Created by root on 19-7-3.
//

#ifndef C99_QMCLIB_H
#define C99_QMCLIB_H

#endif //C99_QMCLIB_H

//
// Created by zhc-2 on 2019/6/18.
//

#include "../zhc.h"



//
// Created by zhc-2 on 2019/6/18.
//

/*
char nextMask() {
    char ret;
    ++i;
    if (x < 0) {
        dx = 1;
        y = ((8 - y) % 8);
        ret = 0xc3;
    } else if (x > 6) {
        dx = -1;
        y = 7 - y;
        ret = 0xd8;
    } else {
        ret = seedMap[y][x];
    }

    x += dx;
    if (i == 0x8000 || (i > 0x8000 && (i + 1) % 0x8000 == 0)) {
        return nextMask();
    }
    return ret;
}
*/

char nextMask_();

int decode(const char *fileName, const char *destFileName);