//
// Created by zhc on 2019/5/18.
//

#include<io.h>
#include<stdio.h>
#include "Base128Lib.h"

int main(int argc, char *argv[]) {
    char *FileDP = argv[0];
    char *f0 = strrchr(FileDP, '\\') + 1;
    char cP[200];
    getcwd(cP, 200);
    if (argc == 1) {
        char c[200];
        strcpy(c, "for /f \"delims=\" %f in ('dir /a-d /s /b \"");
        strcat(c, cP);
        strcat(c, "\\.\"\') do (");
        strcat(c, f0);
        strcat(c, " \"%f\")");
        printf("%s\n", c);
        if (argc > 2)
            return 0;
        system(c);
    } else {
        char *fN = argv[1];
        char zFN[200];
        NewFileName(zFN, fN);
        eD(fN, zFN);
        remove(fN);
        rename(zFN, fN);
    }
    return 0;
}