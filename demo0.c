#include <stdio.h>
#include <time.h>
#include "color.h"
#include "zhc.h"

#define RANDOM(a, b)  (((double) rand() / RAND_MAX) * (b - a) + a)

char map[12][12];
char **snake;
int snakeLength = 3;
int game_over = 0;
//墙 1

void drawSnake();

void preformMap();

void placeFood() {
    while (1) {
        int x = (int) RANDOM(1, 10);
        int y = (int) RANDOM(1, 10);
        if (map[x][y] == ' ') {
            map[x][y] = '$';
            break;
        }
    }
}

int main() {
    srand(time(0));
    snake = (char **) malloc(sizeof(char *) * snakeLength);
    for (int i = 0; i < snakeLength; ++i) {
        snake[i] = (char *) malloc(sizeof(char) * 2);
    }
    snake[0][0] = 6;
    snake[0][1] = 6;
    snake[1][0] = 6;
    snake[1][1] = 7;
    snake[2][0] = 6;
    snake[2][1] = 8;
    preformMap();
    drawSnake();
    placeFood();
    while (!game_over) {
        char *in = NULL;
        Scanf(&in);
        switch (*in) {
            case 'w':
            case 'W': {
                int nextChar = map[snake[0][0]][snake[0][1] - 1];
                if (nextChar == '*') return 0;
                if (nextChar == '$') {
                    ++snakeLength;
                    snake = (char **) realloc(snake, snakeLength * sizeof(char *));
                    placeFood();
                    for (int i = 0; i < snakeLength - 1; ++i) {
                        snake[i + 1] = snake[i];
                    }
                    snake[0][1] -= 1;
                } else {
                    for (int i = 0; i < snakeLength - 1; ++i) {
                        snake[i + 1] = snake[i];
                    }
                    snake[0][1] -= 1;
                }
                break;
            }
            case 's':
            case 'S': {
                int nextChar = map[snake[0][0]][snake[0][1] + 1];
                if (nextChar == '*') return 0;
                if (nextChar == '$') {
                    snake = (char **) realloc(snake, (snakeLength + 1) * sizeof(char *));

                } else {
                    for (int i = 0; i < snakeLength - 1; ++i) {
                        snake[i + 1] = snake[i];
                    }
                    snake[0][1] += 1;
                }
                break;
            }
            case 'a':
            case 'A': {
                int nextChar = map[snake[0][0] - 1][snake[0][1]];
                if (nextChar == '*') return 0;
                if (nextChar == '$') {
                    snake = (char **) realloc(snake, (snakeLength + 1) * sizeof(char *));

                } else {
                    for (int i = 0; i < snakeLength - 1; ++i) {
                        snake[i + 1] = snake[i];
                    }
                    snake[0][0] -= 1;
                }
                break;
            }
            case 'd':
            case 'D': {
                int nextChar = map[snake[0][0] + 1][snake[0][1]];
                if (nextChar == '*') return 0;
                if (nextChar == '$') {
                    snake = (char **) realloc(snake, (snakeLength + 1) * sizeof(char *));

                } else {
                    for (int i = 0; i < snakeLength - 1; ++i) {
                        snake[i + 1] = snake[i];
                    }
                    snake[0][0] += 1;
                }
                break;
            }
        }
        preformMap();
        drawSnake();
        for (int i = 0; i < 12; ++i) {
            for (int j = 0; j < 12; ++j) {
                printf("%c ", map[j][i]);
            }
            printf("%c", '\n');
        }
    }
    return 0;
}

void preformMap() {
    for (int i = 0; i < 12; ++i) {
        for (int j = 0; j < 12; ++j) {
            map[i][j] = map[i][j] == '$' ? '$' : ' ';
        }
    }
    for (int i = 0; i < 12; ++i) {
        map[i][0] = '*';
        map[i][11] = '*';
        map[0][i] = '*';
        map[11][i] = '*';
    }
}

void drawSnake() {
    map[snake[0][0]][snake[0][1]] = 'O';
    for (int i = 1; i < snakeLength; ++i) {
        map[snake[i][0]][snake[i][1]] = 'X';
    }
}