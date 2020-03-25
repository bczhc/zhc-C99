//
// Created by root on 2020/2/12.
//
#include "../zhc.h"

int main() {
    char *dir = "/home/zhc/code/code/io/bczhc.github.io/res/app/some-tools/debug";
    char *file = NULL;
    strcpyAndCat_auto(&file, dir, -1, "/app-debug.apk", -1);
    char *splitDir = NULL;
    strcpyAndCat_auto(&splitDir, dir, -1, "/split", -1);
    FILE *fp;
    if ((fp = fopen(file, "rb")) == NULL) {
        printf("fopen error.");
        return -1;
    }
    dl perFileLength = 50 * 1024L;
    dl fileLength = getFileSize(fp), a = fileLength / perFileLength;
    usi b = (usi) (fileLength % perFileLength);
    
    fclose(fp);
    return 0;
}