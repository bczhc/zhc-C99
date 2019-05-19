//#define ARR_len(x) sizeof(x) / sizeof(x)[0]
#include "Base128Lib.h"

int main(/*const */int argc, char *argv[]) {
    if (argc < 3) {
        printf("%s", "Base128\nCommand [-encode | -decode] [[filePath]] [[DestFilePath]] |\n"
                     "Command [-encode | -decode] [[filePath]]");
        return 'P';
    }
    char dA[strlen(argv[1]) + 1];
    ToUpperCase(dA, argv[1]);
    int d = (!strcmp(dA, "-DECODE")) ? 1 : 0;
    char FileName[strlen(argv[2]) + 1], DestFileName[strlen(argv[argc == 3 ? 2 : 3]) + 1 + ((argc == 3) ? 4 : 0)];
    strcpy(FileName, argv[2]);
    char zFN[strlen(argv[2]) + 1 + ((argc == 3) ? 4 : 0)];
    if (argc == 3) {
        NewFileName(zFN, argv[2]);
        strcpy(DestFileName, zFN);
    } else if (argc == 4) {
        strcpy(DestFileName, argv[3]);
    }
    if (!d) {
        printf("%s", "Encoding...\n");
        eD(FileName, DestFileName);
    } else {
        printf("%s", "Decoding...\n");
        dD(FileName, DestFileName);
    }
    if (argc == 3) {
        remove(argv[2]);
        rename(zFN, argv[2]);
    }
    return 0;
}