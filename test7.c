#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void fc(char *d, int n) {
    int len = strlen(d);
    char c[100] = "";
    char *e = NULL;
    int i = 0;
    if (n >= len) {
        printf("%s", d);
    } else {

        while (i < n) {
            //汉字由8bit组成且最高为1，通过右移7位&1判断是否为汉字，汉字截取2字节
            if (d[i] >> 7 & 1 && d[i + 1] >> 7 & 1)
                i = i + 2;
                //字母截取1字节
            else
                i++;
        }

        strncpy(c, d, (size_t) i);
        e = c;
        printf("从%s字符串中截取%d位字符串结果是：\n%s\n\n", d, n, e);
    }

}

int HF(char c) {//是否为合法字符，即判断传入char转int值是否小于等于0
    int r = 1;
    if ((int) c <= 0) r = 0;
    return r;
}

int ceilingTo2(int i) {//向上取到为2的倍数
    return ((i - 1) / 2 + 1) * 2;
}

int YZ(char *s, int i) {
    int r = i;
    if (!HF(s[i - 1])) {
        r = ceilingTo2(i);
    }
    return r;
}

int main() {
    int i = 1;
    char *s = "abc哈哈真完美!！。。";
    fc(s, YZ(s, i));
    return 0;
}