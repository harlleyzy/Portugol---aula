Algoritmo "Média turmas"
//
//

Var

numDisciplina, numAlunos, contX, contY, qtdAlunoR, qtdAlunoF, qtdAlunoA  : inteiro
nomeTurma, nomeDisciplina : caracter
n1, n2, media, mediaAux, maiorMedia, menorMedia, mediaGeral, mediaGeralTurma : real


Inicio


       escreval("Digite o nome da Turma: ")
       leia(nomeTurma)

       escreval("Digite a quantidade de disciplinas: ")
       leia(numDisciplina)

       escreval("Digite a quantidade de alunos na turma : ")
       leia(numAlunos)

       mediaGeralTurma <- 0

       para contX de 1 ate numDisciplina faca
            media <- 0
            qtdAlunoR <- 0
            qtdAlunoF <- 0
            qtdAlunoA <- 0
            mediaGeral <- 0

            escreval("Digite o nome da disciplina",contX," : ")
            leia(nomeDisciplina)

            para contY de 1 ate numAlunos faca
                 escreval("Digite a nota da 1ª avaliaçãodo aluno ",contY," :")
                 leia(n1)

                 escreval("Digite a nota da 2ª avaliação do aluno ",contY," :")
                 leia(n2)

                 media <- (n1 + n2)/2
                 mediaGeral <-mediaGeral + media

                 mediaAux <- maiorMedia
                 maiorMedia <- media

                 se mediaAux > maiorMedia entao
                    se menorMedia = 0 entao
                       menorMedia <- maiorMedia
                       senao se menorMedia > maiorMedia entao
                             menorMedia <- maiorMedia
                    fimse
                 senao
                      se menorMedia = 0 entao
                         menorMedia <- mediaAux
                      fimse

                      se menorMedia > mediaAux entao
                         menorMedia <- mediaAux
                      fimse
                 fimse

                 se media < 3 entao
                    qtdALunoR <- qtdALunoR + 1
                 senao
                      se (media >= 3) e (media < 7) entao
                          qtdAlunoF <- qtdAlunoF + 1
                      senao
                         qtdAlunoA <- qtdAlunoA + 1
                      fimse
                 fimse

            fimpara

            mediaGeral <- mediaGeral / numALunos
            mediaGeralTurma <- mediaGeralTurma + mediaGeral

            escreval()
            escreval()

            escreval("#### RESUMO DA DISCIPLINA ####")
            escreval("DISCIPLINA: ",nomeDisciplina)
            escreval("MEDIA GERAL DA DISCIPLINA: ",mediaGeral)
            escreval("MAIOR MÉDIA DA DISCIPLINA: ", maiorMedia)
            escreval("MENOR MÉDIA DA DISCIPLINA: ", menorMedia)
            escreval("QTD ALUNOS REPROVADOS: ",qtdAlunoR)
            escreval("QTD ALUNOS NA FINAL: ",qtdAlunoF)
            escreval("QTD ALUNOS APROVADOS: ",qtdAlunoA)
            escreval()
            escreval()
       fimpara

       mediaGeralTurma <- (mediaGeralTurma/numALunos)

       escreval()
       escreval()

       escreval("#### RESUMO DA TURMA ####")
       escreval("TURMA: ", nomeTurma)
       escreval("QTD DISCIPLINAS: ", numDisciplina)
       escreval("MÉDIA GERAL DA TURMA: ",mediaGeralTurma)

Fimalgoritmo