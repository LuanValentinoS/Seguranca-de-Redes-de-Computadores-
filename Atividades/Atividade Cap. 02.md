# Universidade Federal do Agreste de Pernambuco

Av. Bom Pastor s/n - Boa Vista
55292-270 Garanhuns/PE  
+55 (87) 3764-5500  
[http://www.ufape.edu.br](http://www.ufape.edu.br)  

## Bacharelado em Ciência da Computação

**Disciplina:** CCMP3079 Segurança de Redes de Computadores  
**Professor:** Sérgio Mendonça    
**Atividade Cap. 02**  
**Data: Para 17/10/2023**

---

### Nome Completo: Luan Valentino Sampaio Marques

Questões retiradas do livro-texto da disciplina.

1. Responda (de forma objetiva) as questões a seguir:

   (a) **Quais são os elementos essenciais de uma cifra simétrica?**  
   Os elementos essenciais de uma cifra simétrica são a chave secreta compartilhada entre as partes envolvidas e o algoritmo de encriptação/decriptação.

   (b) **Quais são as duas funções básicas usadas nos algoritmos de encriptação?**  
   Substituição e transposição.

   (c) **Qual é a diferença entre uma cifra de bloco e uma cifra de fluxo?**  
   Uma cifra de bloco encripta dados em blocos de tamanho fixo (por exemplo, 64 ou 128 bits), enquanto uma cifra de fluxo encripta dados um bit ou byte de cada vez.

   (d) **Quais são as duas técnicas gerais para atacar uma cifra?**  
   Criptoanálise e ataque de força bruta.

   (e) **Quais são os dois problemas com o one-time pad?**  
   A necessidade de uma chave verdadeiramente aleatória do mesmo tamanho da mensagem e a dificuldade de distribuir e gerenciar essas chaves de forma segura.

   (f) **O que é uma cifra de transposição?**  
   Uma cifra que rearranja os caracteres na mensagem original de acordo com uma regra específica, sem alterar os caracteres em si.

   (g) **O que é esteganografia?**  
   A prática de ocultar a existência de uma mensagem, escondendo dados dentro de outros arquivos, como imagens, áudio ou vídeo, de forma que não seja perceptível.

2. Uma generalização da cifra de César, conhecida como cifra de César afim, tem a seguinte forma: a cada letra de texto claro \( p \), substitua-a pela letra de texto cifrado \( C \):
\[ C = E([a, b], p) = (ap + b) \mod 26 \]
Um requisito básico de qualquer algoritmo de encriptação é que ele seja um para um. Ou seja, se \( p \neq q \), então \( E(k, p) \neq E(k, q) \). Caso contrário, a decriptação é impossível, pois mais de um caractere de texto claro é mapeado no mesmo caractere de texto cifrado. A cifra de César afim não é um-para-um para todos os valores de \( a \). Por exemplo, para \( a = 2 \) e \( b = 3 \), então \( E([a, b], 0) = E([a, b], 13) = 3 \).

(a) **Existem limitações sobre o valor de \( b \)? Explique por que sim ou por que não.**  
Não, não existem limitações sobre o valor de \( b \). O valor de \( b \) realiza apenas um deslocamento aditivo no resultado da multiplicação \( ap \). O valor de \( b \) não afeta a propriedade de ser um-para-um da função de encriptação. A propriedade de ser um-para-um depende exclusivamente do valor de \( a \). Para que a cifra de César afim seja um-para-um, é necessário que a função \( ap \mod 26 \) seja uma bijeção. Isso é garantido quando \( a \) é coprimo com 26, mas o valor de \( b \) pode ser qualquer número inteiro entre 0 e 25.

(b) **Determine quais valores de \( a \) não são permitidos.**  
Os valores de \( a \) que não são permitidos são aqueles que não são coprimos com 26. Em outras palavras, se \( a \) e 26 compartilham algum fator comum além de 1, então \( a \) não é permitido. Para que \( ap \mod 26 \) seja uma função um-para-um, \( a \) deve ter um inverso multiplicativo módulo 26. Isso só acontece se \( a \) for coprimo com 26, ou seja, \( \text{gcd}(a, 26) = 1 \). Portanto, os valores de \( a \) não permitidos são aqueles que compartilham os fatores primos de 26, que são 2 e 13. Assim, os valores de \( a \) não permitidos são múltiplos de 2 ou 13: 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22 e 24.

(c) **Ofereça uma afirmação geral sobre quais valores de \( a \) são e não são permitidos. Justifique-a.**  
Os valores de \( a \) que são permitidos são aqueles que são coprimos com 26, ou seja, \( \text{gcd}(a, 26) = 1 \). Para que a função de encriptação \( (ap + b) \mod 26 \) seja um-para-um, \( a \) deve ter um inverso multiplicativo módulo 26. Isso significa que \( a \) e 26 não podem ter nenhum divisor comum além de 1. Em outras palavras, \( a \) deve ser coprimo com 26. Os fatores primos de 26 são 2 e 13, então qualquer \( a \) que não seja múltiplo de 2 ou 13 será coprimo com 26. Portanto, os valores permitidos de \( a \) são: 1, 3, 5, 7, 9, 11, 15, 17, 19, 21, 23 e 25. Esses valores garantem que a cifra de César afim será um-para-um e, portanto, permitirá uma decriptação correta.

3. **(a) Encripte a mensagem "meet me at the usual place at ten rather than eight o'clock" usando a cifra de Hill com a chave \( \begin{bmatrix} 9 & 4 \\ 5 & 7 \end{bmatrix} \). Mostre seus cálculos e o resultado.**

### (a) Encriptação da mensagem usando a cifra de Hill

1. **Preparação da mensagem**:
   - Mensagem original: "meet me at the usual place at ten rather than eight oclock"
   - Mensagem sem espaços: "meetmeattheusualplaceattenratherthaneightoclock"
   - Adiciona 'X' no final para obter um número par de letras: "meetmeattheusualplaceattenratherthaneightoclockx"

2. **Conversão para números**:
   ```
   m = 12, e = 4, e = 4, t = 19, m = 12, e = 4, a = 0, t = 19, t = 19, h = 7, e = 4, u = 20, s = 18, u = 20, a = 0, l = 11, p = 15, l = 11, a = 0, c = 2, e = 4, a = 0, t = 19, t = 19, e = 4, n = 13, r = 17, a = 0, t = 19, h = 7, a = 0, n = 13, e = 4, i = 8, g = 6, h = 7, t = 19, o = 14, c = 2, l = 11, o = 14, c = 2, k = 10, x = 23
   ```

3. **Agrupar em pares e multiplicar pela chave**:
   Para cada par \(\begin{bmatrix} p1 \\ p2 \end{bmatrix}\):
   \[
   \begin{bmatrix} C1 \\ C2 \end{bmatrix} = \begin{bmatrix} 9 & 4 \\ 5 & 7 \end{bmatrix} \begin{bmatrix} p1 \\ p2 \end{bmatrix} \mod 26
   \]

   - "me" (12, 4):
     \[
     \begin{bmatrix} 9 & 4 \\ 5 & 7 \end{bmatrix} \begin{bmatrix} 12 \\ 4 \end{bmatrix} = \begin{bmatrix} (9 \cdot 12 + 4 \cdot 4) \\ (5 \cdot 12 + 7 \cdot 4) \end{bmatrix} \mod 26 = \begin{bmatrix} 124 \\ 104 \end{bmatrix} \mod 26 = \begin{bmatrix} 20 \\ 0 \end{bmatrix}
     \]
     "20" é "U" e "0" é "A".

   Repetindo o processo para todos os pares:
   ```
   "me" -> UA
   "et" -> HW
   "me" -> UA
   "at" -> ND
   "th" -> IP
   "eu" -> XL
   "su" -> MH
   "al" -> PH
   "pl" -> QH
   "ac" -> KR
   "et" -> HW
   "te" -> XE
   "nr" -> KL
   "at" -> ND
   "he" -> PW
   "an" -> JX
   "ei" -> XC
   "gh" -> PY
   "to" -> YQ
   "cl" -> DL
   "oc" -> OC
   "kx" -> UP
   ```

4. **Mensagem cifrada**:
   ```
   UAHWUA NDIPXLM HPHQHK RHWXEK LNDPWJ XCXPY YQDL OCUP
   ```

**(b) Mostre os cálculos para a decriptação correspondente do texto cifrado a fim de recuperar o texto claro original.**

Para decriptar a mensagem cifrada, precisamos da matriz inversa da chave usada:

1. **Encontrar a matriz inversa da chave**:
- Matriz chave: \(\begin{bmatrix} 9 & 4 \\ 5 & 7 \end{bmatrix}\)
- Determinante: \(\det(A) = (9 \cdot 7 - 5 \cdot 4) \mod 26 = 17\)
- Inverso de 17 módulo 26 é 23.
- Matriz adjunta: \(\begin{bmatrix} 7 & -4 \\ -5 & 9 \end{bmatrix} = \begin{bmatrix} 7 & 22 \\ 21 & 9 \end{bmatrix}\)
- Inversa da matriz: \(A^{-1} = 23 \begin{bmatrix} 7 & 22 \\ 21 & 9 \end{bmatrix} \mod 26 = \begin{bmatrix} 11 & 14 \\ 1 & 17 \end{bmatrix}\)

2. **Decriptar cada par de letras**:
Para cada par \(\begin{bmatrix} C1 \\ C2 \end{bmatrix}\):
\[
\begin{bmatrix} p1 \\ p2 \end{bmatrix} = \begin{bmatrix} 11 & 14 \\ 1 & 17 \end{bmatrix} \begin{bmatrix} C1 \\ C2 \end{bmatrix} \mod 26
\]

Exemplos:
- "UA" (20, 0):
  \[
  \begin{bmatrix} p1 \\ p2 \end{bmatrix} = \begin{bmatrix} 11 & 14 \\ 1 & 17 \end{bmatrix} \begin{bmatrix} 20 \\ 0 \end{bmatrix} = \begin{bmatrix} 220 \\ 20 \end{bmatrix} \mod 26 = \begin{bmatrix} 12 \\ 4 \end{bmatrix}
  \]
  "12" é "M" e "4" é "E".

Repetindo o processo para todos os pares:





5. **Elabore um programa que possa encriptar e decriptar usando a cifra de César geral, também conhecida como cifra aditiva.**

6. **Elabore um programa que possa realizar um ataque de frequência de letra em uma cifra aditiva sem intervenção humana. Seu software deverá produzir textos claros possíveis em ordem aproximada de probabilidade. Seria bom se a sua interface com o usuário permitisse que ele especificasse "mostre os 10 textos claros mais prováveis".**

7. **Crie um software que possa encriptar e decriptar usando uma cifra de Hill 2 × 2.**
