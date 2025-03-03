#include <stdio.h>

typedef struct
{
    int horas;
    int minutos;
} tempo;

int main()
{
    int minutos;
    tempo tempo;

    // ler minutos
    printf("Informe um tempo em minutos: ");
    scanf("%d", &minutos);

    // ler tempo
    printf("Informe um tempo no formato XXhs:YYmin: ");
    scanf("%dhs:%dmin", &tempo.horas, &tempo.minutos);

    // converter minutos
    int horas = minutos / 60;
    minutos = minutos % 60;

    // fazer soma
    tempo.horas += horas;
    tempo.minutos += minutos;

    // retornar valores
    printf("Soma = %dhs:%dmin", tempo.horas, tempo.minutos);

    return 0;
}
