Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor    : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/06/2017
Var
   // Se��o de Declara��es das vari�veis
   vetx,VETd,VETE : vetor[1..8] de inteiro
   ELEMENTO,ACUMULA,TEMP:INTEIRO
   ELEMTEMP,KCONTAR,INDICE: inteiro

FUN��O PESQUISA(VEM: INTEIRO):LOGICO
VAR RET : LOGICO
   II  : INTEIRO
INICIO
   RET <- FALSO
   PARA II DE 1 AT� 8 FA�A
      SE (VETE[II] = VEM) ENT�O
         RET <- VERDADEIRO
      FIMSE
   FIMPARA
   RETORNE RET
FIMFUN��O

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   VETX[1] <- 1
   VETX[2] <- 3
   VETX[3] <- 1
   VETX[4] <- 2
   VETX[5] <- 2
   VETX[6] <- 2
   VETX[7] <- 3

   ACUMULA <- 0
   KCONTAR <- 0
   TEMP <- 1
   INDICE <- 0
   ENQUANTO INDICE < 8 FA�A

      SE TEMP > 0 ENT�O
         ELEMENTO <- VETX[TEMP] // ELEMENTO DO VETOR
      FIMSE
      
      SE (N�O PESQUISA(ELEMENTO)) ENT�O
         KCONTAR <- KCONTAR + 1  // CONTADOR DE VETOR DE ELEMENTOS
      FIMSE

      ACUMULA <- 0

      TEMP <- INDICE - 1
      SE TEMP < 0 ENT�O
         TEMP <- 0
      FIMSE

      ELEMTEMP <- VETX[TEMP+1]

      SE TEMP < 8 ENT�O
         ENQUANTO (ELEMENTO = ELEMTEMP) FA�A
            TEMP <- TEMP + 1
            SE TEMP > 7 ENT�O
               //              TEMP <- 7
               INTERROMPA
            FIMSE
            ELEMTEMP <- VETX[TEMP]
            ACUMULA <- ACUMULA + 1
         FIMENQUANTO
         INDICE <- TEMP
      FIMSE

      SE KCONTAR > 0 ENT�O
         VETE[KCONTAR] <- ELEMENTO  // VETOR DE ELEMENTOS DESTACADOS
      FIMSE

      VETD[KCONTAR] <- ACUMULA  // VETOR COM A QUANTIDADE DE ELEMENTOS
      INDICE <- INDICE + 1

   FIMENQUANTO

   PARA INDICE DE 1 AT� 8 FA�A
      SE VETD[INDICE] <> 0 ENT�O
         ESCREVAL(VETE[INDICE],":",VETD[INDICE])
      FIMSE
   FIMPARA


Fimalgoritmo