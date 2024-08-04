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

   **(b) Mostre os cálculos para a decriptação correspondente do texto cifrado a fim de recuperar o texto claro original.**


4. **Elabore um programa que possa encriptar e decriptar usando a cifra de César geral, também conhecida como cifra aditiva.**

5. **Elabore um programa que possa realizar um ataque de frequência de letra em uma cifra aditiva sem intervenção humana. Seu software deverá produzir textos claros possíveis em ordem aproximada de probabilidade. Seria bom se a sua interface com o usuário permitisse que ele especificasse "mostre os 10 textos claros mais prováveis".**

6. **Crie um software que possa encriptar e decriptar usando uma cifra de Hill 2 × 2.**
