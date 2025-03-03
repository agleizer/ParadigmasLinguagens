#include <stdio.h>

typedef struct
{
    int dia;
    int mes;
    int ano;
} data;

int lerInt()
{
    // funcao da biblioteca propria para ler um int sem os problemas de scanf
    char buffer[32]; // buffer para input
    int num;

    if (fgets(buffer, sizeof(buffer), stdin) == NULL)
    {
        return 0; // se fgets é NULL, houve erro de leitura ou EOF
    }

    if (sscanf(buffer, "%d", &num) != 1)
    {
        return 0; // verificar se entrada realmente é int
    }

    return num;
}

int main()
{

    int entrada = 0;
    do
    {
        printf("Informe a entrada em dias: ");
        entrada = lerInt();
    } while (entrada <= 0);

    data saida;
    saida.ano = entrada / 365;
    entrada = entrada % 365;
    saida.mes = entrada / 30;
    saida.dia = entrada % 30;

    printf("%d anos, %d meses e %d dias", saida.ano, saida.mes, saida.dia);

    return 0;
}
