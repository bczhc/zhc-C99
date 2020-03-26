//
// Created by bczhc on 2020/3/25.
//
#include <stdio.h>

int getUTF8Size(long codepoint) {
    if (codepoint >= 0x0L && codepoint <= 0x7fL) {
        return 1;
    } else if (codepoint >= 0x80L && codepoint <= 0x7ffL) {
        return 2;
    } else if (codepoint >= 0x800L && codepoint <= 0xffffL) {
        return 3;
    } else if (codepoint >= 0x10000L && codepoint <= 0x10ffffL) {
        return 4;
    }
    return 0;
}

int unicode2UTF8(char *dest, long codepoint) {
	int utf8Size = getUTF8Size(codepoint);
	switch (utf8Size) {
		case 1:
			dest[0] = codepoint & 0b01111111;
			break;
		case 2:
			dest[1] = 0b1000000 | (codepoint & 0b00111111);
			dest[0] = 0b11000000 | ((codepoint >> 6) & 0b00111111);
			break;
		case 3:
			dest[2] = 0b10000000 | (codepoint & 0b00111111);
			dest[1] = 0b10000000 | ((codepoint >> 6) & 0b00111111);
			dest[0] = 0b11100000 | ((codepoint >> 12) & 0b00111111);
			break;
		case 4:
			dest[3] = 0b10000000 | (codepoint & 0b00111111);
			dest[2] = 0b10000000 | ((codepoint >> 6) & 0b00111111);
			dest[1] = 0b10000000 | ((codepoint >> 12) & 0b00111111);
			dest[0] = 0b11110000 | ((codepoint >> 18) & 0b00111111);
			break;
		default:
			break;
	}
	return utf8Size;
}

int main(int argc, char **argv) {
	char* f = "./unicode.txt";
	if (argc > 1) f = argv[1];
    FILE *fp = NULL;
    if ((fp = fopen(f, "wb")) == NULL) {
        printf("fopen error");
        return -1;
    }
    char s[4];
    char n[] = {0x0A};
    for (long i = 0; i <= 0x10ffffL; ++i) {
    	int len = unicode2UTF8(s, i);
    	fwrite(s, len, 1, fp);
	// fwrite(n, 1, 1, fp);
	printf("%lo\n", i);
    }
    fclose(fp);
    return 0;
}

