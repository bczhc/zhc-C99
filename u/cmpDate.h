//
// Created by root on 19-8-16.
//

#ifndef C99_CMPDATE_H
#define C99_CMPDATE_H

#endif //C99_CMPDATE_H

/**
 * compare date
 * @param dateSrcStr "yyMMdd"
 * @param date "yyMMdd"
 * @return date is early than srcDate: -1;
 *         date is same as srcDate: 0;
 *         date is later than srcDate: 1
 */
int cmpDate(const char *date, const char *dateSrcStr);