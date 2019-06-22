//
// Created by zhc-2 on 2019/6/18.
//

#include "qmcLib.h"

int main(const int argc, const char *argv[]) {
    if (argc > 2) {
        decode(argv[1], argv[2]);
    } else printf("Command [source file path] [dest file path]\n");
    return 0;
}