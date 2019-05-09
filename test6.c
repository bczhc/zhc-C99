#include <stdio.h>
#include <string.h>

int HF(char c) {//是否为合法字符，即判断传入char转int值是否小于等于0
    int r = 1;
    if ((int) c <= 0) r = 0;
    return r;
}

/*int ceilingTo2(int i) {//向上取到为2的倍数
    return ((i - 1) / 2 + 1) * 2;
}*/


int main() {
    char *s = "a完美bc";
    char c[100];
    int i = 1;
    int j = 1;
    if (!HF(s[i - 1])) {
        j = 2;
    }
    strncpy((char *) c, s + i - 1, (size_t) j);
    c[j] = '\0';
    printf("%s", (char *) c);
    //Only god understood it.
    //No!!!!!!!!!!!!!!!!!!!!freaking write the code!!!!!
}
+