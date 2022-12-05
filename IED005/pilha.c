#include <stdio.h>
#include <stdlib.h>
#define MAXTAN 5

typedef struct {
  int item[MAXTAN];
  int topo;
} Pilha;

void iniciaPilha(Pilha *p){
  p->topo = -1;
}

int isEmpty (Pilha *p){
  if (p->topo == -1) {
      return 1;
    } else {
      return 0;
    }
}

int isFull (Pilha *p){
  if(p->topo == MAXTAN-1) {
      return 1;
    }  else {
      return 0;
    }
}

void push (Pilha *p, int x){
  if(isFull(p) == 1) {
      printf("Pilha cheia");
    } else {
      p->topo++;
      p->item[p->topo] = x;
    }
}

int pop (Pilha *p){
  int aux;
  if(isEmpty(p) == 1) {
      printf("Pilha vazia");
    } else {
      aux = p->item[p->topo];
      p->topo--;
      return aux;
    }
}
int retornatopo ( Pilha *p ){ 
  return p->item[p->topo];
}

int main() {
  Pilha *p = (Pilha*)malloc(sizeof(Pilha));
  iniciaPilha(p);
  
  push(p, 1);
  push(p, 2);
  push(p, 3);
  push(p, 4);
  push(p, 5);
  
  int aux;
  
  aux = pop(p);
  printf("\nSaiu o Livro: %d", aux);

 
  return 0;
}