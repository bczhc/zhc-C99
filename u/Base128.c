//#define ARR_len(x) sizeof(x) / sizeof(x)[0]
#include "a.h"

int main(/*const */int argc, char *argv[]) {
//    argc = 3;
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
    FILE *fp = NULL;
    if ((fp = fopen(FileName, "rb")) == NULL) {
        return 1;
    }
    FILE *fpO = NULL;
    if ((fpO = fopen(DestFileName, "wb")) == NULL) {
        return 1;
    }
    long long fileSize = getFileSize(fp);
    if (!d) {
        printf("%s", "Encoding...\n");
        clock();
        long long a = fileSize / 7LL;
        int b = (int) (fileSize % 7LL);
        char b1[8] = {0, 0, 0, 0, 0, 'z', 'h', 'c'};
        b1[0] = (char) b;
        fwrite(b1, 8, 1, fpO);
        char r[7] = {""};
        for (long long i = 0; i < a; ++i) {
            fread(r, 7, 1, fp);
            if (i % 374490LL == 0) {
                printf("progress: %f%%\n", (float) 100 * ((float) (7 * (i + 1)) / (float) fileSize));
            }
            static char s0[57] = {""};
            static char itoaR[9] = {""};
            strcpy(s0, "");
            for (int k = 0; k < 7; ++k) {
                itoa(((int) r[k]) & 0xFF, itoaR, 2);
                char len_To_8R[9] = {""};
                NumStr_lenTo(len_To_8R, itoaR, 8);
                strcat(s0, len_To_8R);
            }
            String_56_DivideInto(s0, 7);
            char wR[8] = {""};
            for (int l = 0; l < DivideR_len; ++l) {
                wR[l] = (char) BinToDec(DivideR[l]);
            }
            fwrite(wR, 8, 1, fpO);
        }
        if (b != 0) {
            memset(r, 0, 7);
            fread(r, 7, 1, fp);
            static char s0[57] = {""};
            static char itoaR[9] = {""};
            strcpy(s0, "");
            for (int k = 0; k < 7; ++k) {
                itoa(((int) r[k]) & 0xFF, itoaR, 2);
                char len_To_8R[9] = {""};
                NumStr_lenTo(len_To_8R, itoaR, 8);
                strcat(s0, len_To_8R);
            }
            s0[56] = 0;
            String_56_DivideInto(s0, 7);
            char wR[8] = {""};
            for (int l = 0; l < DivideR_len; ++l) {
                wR[l] = (char) BinToDec(DivideR[l]);
            }
            fwrite(wR, 8, 1, fpO);
        }
        clock_t eT = clock();
        printf("progress: 100%%\n"
               "Finished!\n"
               "time-taken: %lf s\n"
               "Speed is about %lf MB/s", (double) eT / 1000,
               ((double) fileSize) / (1048576) / ((double) eT / (double) 1000));
    } else {
        printf("%s", "Decoding...\n");
        clock();
        fileSize -= 8LL;
        long long a = fileSize / 8LL;
        char rF[1] = {""};
        char r[8] = {""};
        fread(rF, 1, 1, fp);
        fread(r, 7, 1, fp);
        char FF = rF[0];
        if (!(r[4] == 'z' && r[5] == 'h' && r[6] == 'c')) {//
            FF = '\0';//
            fseek(fp, 0L, SEEK_SET);//
        }//
        strcat(r, "");
        long long l_i_t = a - 1;
        for (long long i = 0; i < l_i_t; ++i) {
            fread(r, 8, 1, fp);
            if (i % 327679LL == 0) {
                printf("progress: %f%%\n", (float) 100 * ((float) (7 * (i + 1)) / (float) fileSize));
            }
            static char s0[57] = {""};
            static char itoaR[8] = {""};
            static char len_To_7R[9] = {""};
            strcpy(s0, "");
            for (int j = 0; j < 8; ++j) {
                itoa((int) r[j] & 0xFF, itoaR, 2);
                NumStr_lenTo(len_To_7R, itoaR, 7);
                strcat(s0, len_To_7R);
            }
            String_56_DivideInto(s0, 8);
            char wR[7] = {""};
            for (int k = 0; k < DivideR_len; ++k) {
                wR[k] = (char) BinToDec(DivideR[k]);
            }
            fwrite(wR, 7, 1, fpO);
        }
        fread(r, 8, 1, fp);
        static char s0[57] = {""};
        static char itoaR[8] = {""};
        static char len_To_7R[9] = {""};
        strcpy(s0, "");
        for (int j = 0; j < 8; ++j) {
            itoa((int) r[j] & 0xFF, itoaR, 2);
            NumStr_lenTo(len_To_7R, itoaR, 7);
            strcat(s0, len_To_7R);
        }
        String_56_DivideInto(s0, 8);
        char wR[7] = {""};
        for (int k = 0; k < DivideR_len; ++k) {
            wR[k] = (char) BinToDec(DivideR[k]);
        }
        fwrite(wR, (size_t) (FF == '\0' ? 7 : FF), 1, fpO);
        clock_t eT = clock();
        printf("progress: 100%%\n"
               "Finished!\n"
               "time-taken: %lf s\n"
               "Speed is about %lf MB/s", (double) eT / 1000,
               ((double) fileSize) / (1048576) / ((double) eT / (double) 1000));
    }
    fclose(fp);
    fclose(fpO);
    if (argc == 3) {
        remove(argv[2]);
        rename(zFN, argv[2]);
    }
    return 0;
}

