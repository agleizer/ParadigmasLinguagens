#include <stdbool.h>
#include <stdio.h>

typedef struct
{
    int numerador;
    int denominador;
} fracao;

void printFrac(fracao x)
{
    printf("%02d\n", x.numerador);
    printf("--\n");
    printf("%02d\n", x.denominador);
}

fracao somaFrac(fracao a, fracao b)
{
    fracao c;
    c.numerador = (a.numerador * b.denominador + b.numerador * a.denominador);
    c.denominador = a.denominador * b.denominador;
    return c;
}

fracao multFrac(fracao a, fracao b)
{
    fracao c;
    c.numerador = (a.numerador * b.numerador);
    c.denominador = a.denominador * b.denominador;
    return c;
}

fracao divFrac(fracao a, fracao b)
{
    fracao c;
    c.numerador = (a.numerador * b.denominador);
    c.denominador = b.numerador * a.denominador;
    return c;
}

bool igualdadeFrac(fracao a, fracao b)
{
    if (a.numerador * b.denominador == a.denominador * b.numerador)
        return true;
    else
        return false;
}

int main()
{
    fracao a;
    fracao b;

    printf("Informe a fração A\n");
    printf("numerador: ");
    scanf("%d", &a.numerador);
    printf("denominador: ");
    scanf("%d", &a.denominador);

    printf("\nFração informada:\n");
    printFrac(a);

    printf("Informe a fração B\n");
    printf("numerador: ");
    scanf("%d", &b.numerador);
    printf("denominador: ");
    scanf("%d", &b.denominador);

    if (b.denominador == 0 || a.denominador == 0)
    {
        printf("\n\nERRO FATAL: DIVISÃO POR ZERO!!!\n\n");
        printf("Encerrando o programa.\n");
        printf("Por favor não tente executar o programa novamente.\n");
        return 1;
    }

    printf("\nFração informada:\n");
    printFrac(b);

    fracao c = somaFrac(a, b);
    printf("\nSoma:\n");
    printFrac(c);

    c = multFrac(a, b);
    printf("\nMultiplicação:\n");
    printFrac(c);

    c = divFrac(a, b);
    printf("\nDivisão:\n");
    printFrac(c);

    printf("\nIgualdade:\n");
    if (igualdadeFrac(a, b))
        printf("Verdadeiro\n");
    else
        printf("Falso.\n");

    return 0;
}
