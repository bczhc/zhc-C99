#include <stdio.h>
#include <time.h>
#include "color.h"
#include "zhc.h"

#define RANDOM(a, b)  (((double) rand() / RAND_MAX) * (b - a) + a)

char map[12][12];
char **snake; //蛇的身体（从尾到头）
int snakeLength = 1;
int game_over = 0;
//墙 1

void drawSnake();

void preformMap();

void offsetSnakeBody();

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
    snake[0][0] = 3;
    snake[0][1] = 3;//蛇的初始位置
    preformMap();
    drawSnake();
    placeFood();
    while (!game_over) {
        char *in = NULL;
        Scanf(&in);
        switch (*in) {
            case 'w':
            case 'W': {
                char nextChar = map[snake[snakeLength - 1][0]][snake[snakeLength - 1][1] - 1];
                if (nextChar == '*' || nextChar == 'X') return 0;
                if (nextChar == '$') {
                    ++snakeLength;
                    snake = (char **) realloc(snake, snakeLength * sizeof(char *));
                    snake[snakeLength - 1] = (char *) malloc(sizeof(char) * 2);
                    snake[snakeLength - 1][0] = snake[snakeLength - 2][0];
                    snake[snakeLength - 1][1] = snake[snakeLength - 2][1] - 1;
                    placeFood();
                } else {
                    offsetSnakeBody();
                    --snake[snakeLength - 1][1];
                }
                break;
            }
            case 's':
            case 'S': {
                char nextChar = map[snake[snakeLength - 1][0]][snake[snakeLength - 1][1] + 1];
                if (nextChar == '*' || nextChar == 'X') return 0;
                if (nextChar == '$') {
                    ++snakeLength;
                    snake = (char **) realloc(snake, snakeLength * sizeof(char *));
                    snake[snakeLength - 1] = (char *) malloc(sizeof(char) * 2);
                    snake[snakeLength - 1][0] = snake[snakeLength - 2][0];
                    snake[snakeLength - 1][1] = snake[snakeLength - 2][1] + 1;
                    placeFood();
                } else {
                    offsetSnakeBody();
                    ++snake[snakeLength - 1][1];
                }
                break;
            }
            case 'a':
            case 'A': {
                char nextChar = map[snake[snakeLength - 1][0] - 1][snake[snakeLength - 1][1]];
                if (nextChar == '*' || nextChar == 'X') return 0;
                if (nextChar == '$') {
                    ++snakeLength;
                    snake = (char **) realloc(snake, snakeLength * sizeof(char *));
                    snake[snakeLength - 1] = (char *) malloc(sizeof(char) * 2);
                    snake[snakeLength - 1][0] = snake[snakeLength - 2][0] - 1;
                    snake[snakeLength - 1][1] = snake[snakeLength - 2][1];
                    placeFood();
                } else {
                    offsetSnakeBody();
                    --snake[snakeLength - 1][0];
                }
                break;
            }
            case 'd':
            case 'D': {
                char nextChar = map[snake[snakeLength - 1][0] + 1][snake[snakeLength - 1][1]];
                if (nextChar == '*' || nextChar == 'X') return 0;
                if (nextChar == '$') {
                    ++snakeLength;
                    snake = (char **) realloc(snake, snakeLength * sizeof(char *));
                    snake[snakeLength - 1] = (char *) malloc(sizeof(char) * 2);
                    snake[snakeLength - 1][0] = snake[snakeLength - 2][0] + 1;
                    snake[snakeLength - 1][1] = snake[snakeLength - 2][1];
                    placeFood();
                } else {
                    offsetSnakeBody();
                    ++snake[snakeLength - 1][0];
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

void offsetSnakeBody() {
    for (int i = 0; i < snakeLength - 1; ++i) {
        snake[i][0] = snake[i + 1][0];
        snake[i][1] = snake[i + 1][1];
    }
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
    for (int i = 0; i < snakeLength - 1; ++i) {
        map[snake[i][0]][snake[i][1]] = 'X';
    }
    map[snake[snakeLength - 1][0]][snake[snakeLength - 1][1]] = 'O';
}