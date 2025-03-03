#include <stdio.h>

typedef struct
{
    int horas;
    int minutos;
} tempo;

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
        printf("Informe a entrada em minutos: ");
        entrada = lerInt();
    } while (entrada <= 0);

    tempo saida;
    saida.horas = entrada / 60;
    saida.minutos = entrada % 60;

    printf("%d horas e %d minutos", saida.horas, saida.minutos);

    return 0;
}