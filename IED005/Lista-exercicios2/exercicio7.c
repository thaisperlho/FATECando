#include <stdio.h>
#include <string.h>

int main()
{
    int i;
    typedef struct 
    {
        char nome[20];
        int matricula;
        char curso[30];
    }Aluno;
    Aluno alunos[5];

    for( i=0; i<5; i++) {
        strcpy(alunos[i].nome, "Null");
        strcpy(alunos[i].curso, "Null");
        alunos[i].matricula = 0;
    }

    for ( i = 0; i < 5; i++)
    {
        printf("Digite nome do aluno: ");
        scanf("%s%*c", &alunos[i].nome);
        printf("Digite matricula do aluno: ");
        scanf("%i%*c", &alunos[i].matricula);
        printf("Digite nome do curso: ");
        scanf("%s%*c", &alunos[i].curso);
        printf("\n");
    }
    
    for( i=0; i<5; i++) {
    printf(" \n O nome do aluno é: %s ", alunos[i].nome);
    printf(" \n A matricula do  aluno é: %i ", alunos[i].matricula);
    printf(" \n O curso do aluno é: %s ", alunos[i].curso);
    printf("\n");
    }

    return 0;
}
