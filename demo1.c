#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <process.h>
#include <synchapi.h>

void printTXT(char *filePath, int sleepTime) {
    FILE *fp = fopen(filePath, "r");
    char c[10240];
    char cc[1024];
    strcpy(c, "");
    while (fgets(cc, 1024, fp) != NULL) {
        strcat(c, cc);
    }
    system("cls");
    printf("%s", c);
    Sleep((DWORD) sleepTime);
}

int main(int argc, char **argv) {
    system("pause");
    for (int i = 1; i < 1748; ++i) {
        int f = i - 1;
        char source[4];
        int toLen = 4;
        itoa(f, source, 10);
        char NumToLen__r[toLen];
        strcpy(NumToLen__r, source);
        int j = toLen - strlen(NumToLen__r);
        strcpy(NumToLen__r, "");
        for (int h = 0; h < j; ++h) {
            strcat(NumToLen__r, "0");
        }
        strcat(NumToLen__r, source);
        char fN[28];
        strcpy(fN, "C:\\zhc\\f\\s3\\src\\File_");
        strcat(fN, NumToLen__r);
        strcat(fN, ".txt");
        printTXT(fN, atoi(argv[1]));
    }
    return EXIT_SUCCESS;
}