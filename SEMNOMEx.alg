Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor    : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/06/2017
Var
   // Se��o de Declara��es das vari�veis
   VetX,VetD,VetE : vetor[1..8] de caracter
   ACUMULA,TEMP:INTEIRO
   KCONTAR,INDICE: inteiro
   ELEMTEMP,ELEMENTO : caracter


FUN��O PESQUISA(VEM: caracter):LOGICO
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

   VETX[1] <- "A"
   VETX[2] <- "B"
   VETX[3] <- "B"
   VETX[4] <- "C"
   VETX[5] <- "C"
   VETX[6] <- "C"
   VETX[7] <- "C"

   ACUMULA <- 0
   KCONTAR <- 0
   TEMP    <- 1
   INDICE  <- 1

   ENQUANTO INDICE < 8 FA�A

      ELEMENTO <- VETX[indice] // ELEMENTO DO VETOR
      SE (N�O PESQUISA(ELEMENTO)) ENT�O
         KCONTAR <- KCONTAR + 1  // CONTADOR DE VETOR DE ELEMENTOS
      FIMSE

      ACUMULA <- 1
      TEMP    <- INDICE + 1
      ELEMTEMP<- VETX[TEMP]

      SE TEMP < 8 ENT�O
         ENQUANTO (ELEMENTO = ELEMTEMP) FA�A
            ELEMENTO <- ELEMTEMP
            ELEMTEMP <- VETX[TEMP]
            ACUMULA <- ACUMULA + 1
            TEMP <- TEMP + 1
            SE TEMP > 8 ENT�O
               INTERROMPA
            FIMSE
         FIMENQUANTO
         //         INDICE <- TEMP
      FIMSE

      VETE[KCONTAR] <- ELEMENTO  // VETOR DE ELEMENTOS DESTACADOS
      VETD[KCONTAR] <- NUMPCARAC(ACUMULA)  // A QUANTIDADE DE ELEMENTOS
      INDICE <- INDICE + 1

   FIMENQUANTO

   PARA INDICE DE 1 AT� 8 FA�A
      SE CARACPNUM(VETD[INDICE]) <> 0 ENT�O
         ESCREVAL(VETE[INDICE],":",VETD[INDICE])
      FIMSE
   FIMPARA


Fimalgoritmo