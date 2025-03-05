{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
-}

{-
01. Escreva um função que recebe um número e verifica se ele é par.
A função retorna True caso o número seja par ou False caso contrário.
-}

{-
COMPILAR
ghc -o meu_programa main.hs

EXECUTAR
./meu_programa  # No Linux/macOS
meu_programa.exe  # No Windows
-}

-- RESOLUÇÃO POR IA, PRECISEI DE UMA RESOLUÇÃO PRONTA PARA ENTENDER COMO COMEÇAR A PROGRAMAR EM HASKELL...

-- Definição da função ehPar, que recebe um Int e retorna um Bool
-- Diferente de C, a assinatura de tipo é explicitada antes da função
ehPar :: Int -> Bool  
ehPar n = n `mod` 2 == 0  -- O operador `mod` é uma função e pode ser usado com crases (`)

-- Função principal, equivalente ao `main` em C
main :: IO ()  -- `IO ()` indica que a função realiza efeitos colaterais (entrada/saída)
main = do  -- `do` introduz um bloco de ações sequenciais de entrada/saída
    putStrLn "Digite um número:"  -- `putStrLn` imprime uma string com quebra de linha (equivalente a `printf` em C)
    
    input <- getLine  -- `getLine` lê uma linha do usuário (tipo `IO String`)
    -- `<-` extrai o valor de `IO String`, diferente de C onde não há distinção entre valores puros e efeitos colaterais

    let numero = read input :: Int  
    -- `let` define uma variável (imutável por padrão, diferente de `int` em C)
    -- `read` converte string para número, e `:: Int` força o tipo
    -- Em C, usaríamos `atoi(input)`, mas `read` pode inferir o tipo se necessário

    if ehPar numero  -- `if` em Haskell é uma expressão e sempre retorna um valor (não pode ser "vazio" como em C)
        then putStrLn "O número é par."  -- `then` e `else` são obrigatórios
        else putStrLn "O número é ímpar."
