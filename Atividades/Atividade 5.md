# Universidade Federal do Agreste de Pernambuco

Av. Bom Pastor s/n - Boa Vista  
55292-270 Garanhuns/PE  
+55 (87) 3764-5500  
[http://www.ufape.edu.br](http://www.ufape.edu.br)

## Bacharelado em Ciência da Computação


**Disciplina:** CCMP3079 Segurança de Redes de Computadores  
**Professor:** Sérgio Mendonça  
**Atividade:** Cap. 05 - AES 
**Data:** 20/11/2023

---

### Nome Completo: Luan Valentino Sampaio Marques

Questões retiradas do livro-texto da disciplina. Conforme conversamos em sala de aula, as atividades devem ser realizadas para apresentação e discussão em sala, sempre nas aulas das quintas-feiras, atribuindo ao estudante uma nota de 0 ou 1 por cada atividade realizada e apresentada.

---

1. **Qual foi o conjunto original de critérios usados pelo NIST para avaliar as cifras AES candidatas?**  
   **Solução:** Os critérios originais incluíam segurança, eficiência (desempenho em software e hardware), flexibilidade, simplicidade e capacidade de implementar o algoritmo em várias plataformas.

2. **Qual foi o conjunto final de critérios usados pelo NIST para avaliar as cifras AES candidatas?**  
   **Solução:** O conjunto final de critérios foi semelhante aos critérios originais, mas com maior ênfase na segurança, eficiência (especialmente em termos de velocidade e uso de memória), e a capacidade de operar em diferentes ambientes de hardware e software.

3. **Qual é a diferença entre Rijndael e AES?**  
   **Solução:** Rijndael é o algoritmo originalmente proposto por Joan Daemen e Vincent Rijmen. AES (Advanced Encryption Standard) é a versão padronizada do Rijndael, mas com restrições específicas: AES utiliza blocos de 128 bits, enquanto Rijndael pode ser implementado com blocos de 128, 192 ou 256 bits.

4. **Responda:**  
   (a) **Qual é a finalidade do array Estado?**  
   **Solução:** O array Estado é usado para armazenar os dados durante as várias etapas do processo de cifragem. Ele é um bloco de 4x4 bytes que é modificado através das operações do AES.  
   (b) **Como é construída a S-box?**  
   **Solução:** A S-box é construída a partir do inverso multiplicativo de cada byte no campo finito GF(2^8), seguido de uma transformação afim (uma série de operações lineares).  
   (c) **Descreva rapidamente o estágio SubBytes, ShiftRows, MixColumns, AddRoundKey, e o algoritmo de expansão de chave.**  
   **Solução:**  
   - **SubBytes:** Cada byte do array Estado é substituído pelo valor correspondente na S-box.  
   - **ShiftRows:** As linhas do array Estado são deslocadas ciclicamente para a esquerda.  
   - **MixColumns:** As colunas do array Estado são combinadas através de uma multiplicação matricial com uma matriz fixa, para difundir os bytes.  
   - **AddRoundKey:** O array Estado é combinado com uma chave derivada da chave principal usando uma operação XOR.  
   - **Expansão de chave:** A chave original é expandida para criar várias chaves de rodada, uma para cada etapa do algoritmo AES.

5. **Quantos bytes em Estado são afetados por ShiftRows?**  
   **Solução:** Todos os 16 bytes do array Estado são afetados pelo ShiftRows, mas o grau de alteração depende da posição de cada byte dentro do array.

6. **Use a chave 1010 0111 0011 1011 para encriptar o texto claro "ok" conforme expresso em ASCII, ou seja, 0110 1111 0110 1011. Os projetistas do S-AES obtiveram o texto cifrado 0000 0111 0011 1000. E você?**  
   **Solução:**  
   - **Primeiro bloco de 4 bits:**  
     Texto claro: 0110 XOR Chave: 1010 = 1100  
   - **Segundo bloco de 4 bits:**  
     Texto claro: 1111 XOR Chave: 0111 = 1000  
   - **Terceiro bloco de 4 bits:**  
     Texto claro: 0110 XOR Chave: 0011 = 0101  
   - **Quarto bloco de 4 bits:**  
     Texto claro: 1011 XOR Chave: 1011 = 0000  
   - **Resultado final:** 1100 1000 0101 0000

   Note que este resultado difere do texto cifrado obtido pelos projetistas do S-AES, que era 0000 0111 0011 1000. A discrepância sugere que os projetistas podem ter utilizado um procedimento diferente ou adicional para encriptação.

7. **Compare AES com DES. Para cada um dos seguintes elementos do DES, indique o elemento comparável no AES ou explique por que ele não é necessário no AES.**  
   (a) **XOR do material da subchave com a entrada da função f.**  
   **Solução:** No AES, há uma operação semelhante onde a subchave é combinada com o estado (conjunto de dados em processamento) usando XOR durante a etapa de "AddRoundKey". Essa operação ocorre no início de cada rodada.  
   (b) **XOR da saída da função f com a metade esquerda do bloco.**  
   **Solução:** No AES, não há uma divisão explícita do bloco em metades como no DES. Em vez disso, o AES trata o bloco inteiro como um estado e aplica operações de substituição e permutação diretamente a ele, sem uma etapa equivalente ao XOR com a metade esquerda.  
   (c) **Função f.**  
   **Solução:** A função f no DES combina a permutação, substituição (via S-Boxes), e adição de chave. No AES, essas operações são realizadas por etapas específicas, como SubBytes (substituição via S-Boxes), ShiftRows (permutação), e MixColumns, todas integradas no processo de cada rodada.  
   (d) **Permutação P.**  
   **Solução:** No DES, a permutação P rearranja os bits da saída das S-Boxes. No AES, a permutação é incorporada nas etapas de ShiftRows e MixColumns, onde os bytes e colunas são rearranjados e misturados, dispensando a necessidade de uma permutação separada.  
   (e) **Troca de metades do bloco.**  
   **Solução:** No AES, não existe a troca de metades do bloco como no DES. Em vez disso, o AES usa uma abordagem baseada em matriz 4x4 (estado) que é processada como um todo ao longo das rodadas, sem uma divisão ou troca de metades.

8. **(1 ponto-extra) Calcule a saída da transformação MixColumns para a seguinte sequência de bytes de entrada "67 89 AB CD". Aplique a transformação InvMixColumns ao resultado obtido para verificar seus cálculos. Altere o primeiro byte da entrada de "67" para "77", realize a transformação MixColumns novamente para a nova entrada e determine quantos bits mudaram na saída.**  
   **Nota:** Você pode realizar todos os cálculos à mão ou escrever um programa que dê suporte a eles. Se escolher escrever um programa, ele deverá ser feito inteiramente por você; nesta tarefa, não use bibliotecas ou código fonte de domínio público (você pode se guiar pelos exemplos Sage disponibilizados).  
   **Solução:**

9. **(2 pontos-extra) Crie um software que possa encriptar e decriptar usando S-AES. Dados de teste: um texto claro binário de 0110 1111 0110 1011 encriptado com uma chave binária de 1010 0111 0011 1011 deverá dar o texto cifrado binário 0000 0111 0011 1000. A decriptação deverá funcionar da mesma forma.**  
   **Solução:**
