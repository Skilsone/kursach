#include<stdio.h>
#include<time.h>
#include<stdlib.h>
#include"header.h"

int main() {
    int N,num;
    printf("Размер матрицы: ");
    scanf("%d", &N);
    again:
    printf("Выберите заполнение матрицы: \n1.Рандомно\n2.Вручную\n");
    scanf("%d", &num);
    int **A = (int**)malloc(sizeof(int*) * N);
    for(int i = 0; i < N; i++){
        A[i] = (int*)malloc(sizeof(int) * N);
    }
    switch (num)
    {
        case 1:
            generate((int**)A, N);
            printf("Hello world");
            break;
        case 2:
            for(int i = 0; i < N; i++){
                for(int j = 0; j < N; j++){
                    scanf("%d", &A[i][j]);
                }
            }

        default:
            printf("Неправильное число. Выберите снова\n");
            goto again;
    }

    for(int i = 0; i < N; i++){
        for(int j = 0; j < N; j++){
            printf("%d ", A[i][j]);
        }
        printf("\n");
    }
    printf("\n");
    int sum = sum_dia((int**)A, N);
    printf("Сумма диагонали %d\n", sum);
    int chet_max = 0, chet_min = 0;
    chetchik((int**)A, N, &chet_max, &chet_min, sum);
    // printf("chet_max = %d    chet_min = %d\n", chet_max, chet_min);
    printf("Числа которые превышают сумму диагонали %d  Числа которые меньше суммы диагонали %d", chet_max, chet_min);
    for(int i = 0; i < N; i++)
        free(A[i]);
    free(A);
    return 0;
}