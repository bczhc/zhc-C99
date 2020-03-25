//
// Created by bczhc on 2020/3/25.
//
#include <stdio.h>

int getUTF8Size(long codepoint) {
    if (codepoint >= 0x0L && codepoint <= 0x7fL) {
        return 1;
    } else if (codepoint >= 0x80L && codepoint <= 0x7ffL) {
        return 2;
    } else if (codepoint <= 0x800L && codepoint >= 0xffffL) {
        return 3;
    } else if (codepoint <= 0x10000L && codepoint >= 0x10ffffL) {
        return 4;
    }
    return 0;
}

int bit2int(int *bitArr) {
    int r = 0;
    for (int i = 0; i < 8; ++i) {
        int b = bitArr[i];
        r |= (b << (7 - i));
    }
    return r;
}

int unicode2UTF8(char *dest, long codepoint) {
    int utf8Size = getUTF8Size(codepoint), i;
    int bits[utf8Size * 8];
    long t = codepoint;
    if (utf8Size == 1) {
        bits[0] = 0;
    } else {
        for (i = 0; i < utf8Size; ++i) {
            bits[i] = 1;
            if (i > 0) {
                char *p = (char *) (bits + i * 8);
                p[0] = 1, p[1] = 0;
            }
        }
        bits[utf8Size] = 0;
    }
    int len = utf8Size == 1 ? 7 : (utf8Size * 5 + 1);
    int bin[len];
    i = 0;
    while (t != 0) {
        bin[i] = (int) (t % 2);
        ++i;
        t /= 2;
    }
    if (utf8Size == 1) {
        for (i = 0; i < 7; ++i) {
            bits[7 - i] = bin[i];
        }
    } else {
        for (i = utf8Size - 1; i >= 1; --i) {
            char *p = (char *) (bits + i * 8);
            for (int j = 0; j < 6; ++j) {
                p[7 - j] = bin[j + (utf8Size - 1 - i) * 6];
            }
        }
        int restSize = 7 - utf8Size;
        int index = 6 * (utf8Size - 1);
        int to = index + restSize;
        t = utf8Size + 1;
        for (i = index; i < to; ++i) {
            bits[t] = bin[i];
            ++t;
        }
    }
    for (i = 0; i < utf8Size; ++i) {
        dest[i] = bit2int(bits + i * 8);
    }
    return utf8Size;
}

int main() {
    /*FILE *fp = NULL;
    if ((fp = fopen("./unicode.txt", "rb")) == NULL) {
        ferror(fp);
        printf("fopen error");
        fclose(fp);
        return -1;
    }
    fclose(fp);*/
    char r[4];
    unicode2UTF8(r, 22909);
}

