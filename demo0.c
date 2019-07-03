#include "./zhc.h"

int main() {
    char *r = NULL;
    const char *s1 = "abc";
    const char *s2 = "1234";
    strcat_auto(&r, s1);
    strcat_auto(&r, "..");
    strcat_auto(&r, s2);
    printf("%s\n", r);
}