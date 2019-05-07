#include <stdio.h>
#include <string.h>
#include <process.h>


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
        printf("命令方法：command [收件人邮箱地址] [主题（须加双引号）] [正文（以txt文件保存，输入路径，须加双引号）] [附件（可选），输入路径，须加双引号]\n"
               "整合发邮件exe应在当下目录，命名为\"SimpleEmail\"\n"
                /*"使用“-ren”可以重命名当下目录exe为\"SimpleEmail\"。"*/);
    } else if (!strcmp(argv[1], "-ren")) {
        //TODO -ren_...
    } else if (argc >= 4) {
        char *c[100];
        strcpy((char *) c, "echo off && ");
        strcat((char *) c, "call \"");
        strcat((char *) c, (char *) FilePath);
        strcat((char *) c, "blat\\blat.exe");
        strcat((char *) c, "\"");
        strcat((char *) c, " \"");
        strcat((char *) c, argv[3]);//邮件正文 以txt保存
        strcat((char *) c, "\"");
        strcat((char *) c, " -to ");
        strcat((char *) c, argv[1]);//收件人邮箱地址
        strcat((char *) c, " -base64 ");
        strcat((char *) c, "-charset GB2312 ");
        strcat((char *) c, "-subject ");
        strcat((char *) c, "\"");
        strcat((char *) c, argv[2]);//邮件主题
        strcat((char *) c, "\"");
        strcat((char *) c, " -server ");
        if (strstr("bczhc0@126.com", "126")) strcat((char *) c, "smtp.126.com");
        strcat((char *) c, " -f ");
        strcat((char *) c, "bczhc0@126.com");//发件人邮箱地址
        strcat((char *) c, " -u ");
        strcat((char *) c, "bczhc0");
        strcat((char *) c, " -pw ");
        strcat((char *) c, "dnbdyyx0");//发件人邮箱密码
        if (argc == 7) {
            strcat((char *) c, " -attach ");
            strcat((char *) c, "\"");
            strcat((char *) c, argv[4]);//附件
            strcat((char *) c, "\"");
        }
//                printf("%s\n", (char *) c);
        system((char *) c);
    }
}