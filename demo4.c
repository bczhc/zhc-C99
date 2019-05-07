#include <stdio.h>
#include <string.h>
#include <process.h>

char *split(char str[], char delims[]) {
    char *result = NULL;
    result = strtok(str, delims);
    char *s = NULL;
    while (result != NULL) {
        s = result;
        break;
    }
    return s;
}

int main(int argc, char *argv[]) {//By bczhc
    char FilePath[100];
    if ((int) argv[0][0] == '.' || strstr(argv[0], ":")) {
        strcpy(FilePath, argv[0]);
    } else {
        strcpy(FilePath, ".\\");
        strcat(FilePath, argv[0]);
    }
    for (int i = strlen(FilePath); i > 0; --i) {
        if (FilePath[i] == '\\') {
            FilePath[i] = '\0';
            break;
        }
    }
    strcat(FilePath, "\\");
    if (argc == 1) {
        printf("简单的自己邮箱发邮件重新整理命令行\t主要使用blat\r\n需要获得帮助，请使用“/? | --? | --h | --help”。");
    } else {
        int t = 0;
        for (int i = 1; i < argc; ++i) {
            if (!strcmp(argv[i], "--help") || !strcmp(argv[i], "--h") || !strcmp(argv[i], "--?") ||
                !strcmp(argv[i], "/?"))
                t = 1;
        }
        if (t) {
            printf("%s",
                   (char *) "命令方法：command [收件人电子邮箱地址] [发件人电子邮箱地址] [发件人电子邮箱密码] [邮件主题（须加双引号）] [邮件正文（以TXT文件保存，这里输入txt文件路径，须加双引号）] [附件（可为缺省，输入文件路径，须加双引号）]");
        } else {
            if (argc < 6) {
                printf("获得帮助请使用“/? | --? | --h | --help”。");
            } else {
                char *c[100];
                strcpy((char *) c, "echo off && ");
                strcat((char *) c, "call \"");
                strcat((char *) c, (char *) FilePath);
                strcat((char *) c, "blat\\blat.exe");
                strcat((char *) c, "\"");
                strcat((char *) c, " \"");
                strcat((char *) c, argv[5]);//邮件正文 以txt保存
                strcat((char *) c, "\"");
                strcat((char *) c, " -to ");
                strcat((char *) c, argv[1]);//收件人邮箱地址
                strcat((char *) c, " -base64 ");
                strcat((char *) c, "-charset UTF-8 ");
                strcat((char *) c, "-subject ");
                strcat((char *) c, "\"");
                strcat((char *) c, argv[4]);//邮件主题
                strcat((char *) c, "\"");
                strcat((char *) c, " -server ");
                if (strstr(argv[2], "126")) strcat((char *) c, "smtp.126.com");
                if (strstr(argv[2], "qq")) strcat((char *) c, "smtp.qq.com");
                if (strstr(argv[2], "163")) strcat((char *) c, "smtp.163.com"); //三个smtp协议 服务器地址
                strcat((char *) c, " -f ");
                strcat((char *) c, argv[2]);//发件人邮箱地址
                strcat((char *) c, " -u ");
                char *emailUserName = split(argv[2], "@");
                strcat((char *) c, emailUserName);
                strcat((char *) c, " -pw ");
                strcat((char *) c, argv[3]);//发件人邮箱密码
                if (argc == 7) {
                    strcat((char *) c, " -attach ");
                    strcat((char *) c, "\"");
                    strcat((char *) c, argv[6]);//附件
                    strcat((char *) c, "\"");
                }
//                printf("%s\n", (char *) c);
                system((char *) c);
            }
        }
    }
}