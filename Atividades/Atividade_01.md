# Universidade Federal do Agreste de Pernambuco

Av. Bom Pastor s/n - Boa Vista  
55292-270 Garanhuns/PE  
+55 (87) 3764-5500  
[http://www.ufape.edu.br](http://www.ufape.edu.br)

## Bacharelado em Ciência da Computação

**Disciplina:** CCMP3079 Segurança de Redes de Computadores  
**Professor:** Sérgio Mendonça  
**Atividade:** Cap. 01 - Introdução  
**Data:** 10 de outubro de 2023

---

### Nome Completo: Luan Valentino Sampaio Marques

Questões retiradas do livro-texto da disciplina. Conforme conversamos em sala de aula, as atividades devem ser realizadas para apresentação e discussão em sala, sempre nas aulas das quintas-feiras, atribuindo ao estudante uma nota de 0 ou 1 por cada atividade realizada e apresentada.

1. **O que é a arquitetura de segurança OSI?**  
   **Solução:**  
   A arquitetura de segurança OSI é uma estrutura que define as medidas de segurança que podem ser aplicadas em sistemas de processamento de dados e nas transferências de informação. Ela abrange a proteção contra ataques à segurança, a implementação de mecanismos de segurança (como detecção, prevenção e recuperação de ataques) e a provisão de serviços de segurança (como autenticação, controle de acesso, confidencialidade e integridade).

2. **Qual é a diferença entre ameaças à segurança passivas e ativas?**  
   **Solução:**  
   **Ameaças passivas:** São aquelas que envolvem a interceptação ou monitoramento de dados sem alterar o conteúdo da comunicação ou o sistema. O objetivo é obter informações sem detecção, como espionagem ou análise de tráfego.

   **Ameaças ativas:** Envolvem tentativas de modificar o sistema ou os dados em trânsito. Essas ameaças incluem a alteração de mensagens, a inserção de informações falsas, a exclusão ou o repasse de dados, geralmente com a intenção de causar danos ou obter algum benefício.

3. **Liste e defina resumidamente as categorias de ataques passivos e ativos à segurança.**  
   **Solução:**  
   **Ataques passivos:**
   - Intercepção de comunicação: Monitoramento de dados transmitidos.
   - Análise de tráfego: Observação de padrões de comunicação para inferir informações.

   **Ataques ativos:**
   - Mascaramento: Um intruso se passa por outra entidade.
   - Repetição: Interceptação e retransmissão de dados.
   - Modificação de mensagens: Alteração do conteúdo de mensagens legítimas.
   - Interrupção: Interferência no fluxo de comunicação para negar serviços.

4. **Liste e defina resumidamente as categorias dos serviços de segurança.**  
   **Solução:**  
   - **Autenticação:** Garantir que as entidades comunicantes são quem dizem ser.
   - **Controle de acesso:** Prevenção de uso não autorizado de recursos.
   - **Confidencialidade dos dados:** Proteção de dados contra divulgação não autorizada.
   - **Integridade de dados:** Assegurar que os dados não foram alterados de forma não autorizada.
   - **Irretratabilidade:** Prevenção de negação de ações, garantindo que uma entidade não possa negar a autoria de uma comunicação.

5. **Liste e defina resumidamente as categorias dos mecanismos de segurança.**  
   **Solução:**  
   - **Codificação:** Transformação de dados para impedir acesso não autorizado.
   - **Assinatura digital:** Verificação da origem e integridade dos dados.
   - **Controle de acesso:** Determinação de quem pode acessar recursos.
   - **Troca de autenticação:** Verificação da identidade de entidades.
   - **Preenchimento de tráfego:** Inserção de dados falsos para frustrar análise de tráfego.
   - **Controle de roteamento:** Escolha de rotas seguras para dados.
   - **Notarização:** Uso de terceiros confiáveis para garantir transações.
   - **Trilha de auditoria de segurança:** Registro de atividades para auditoria de segurança.

6. **Considere um caixa eletrônico ATM no qual os usuários fornecem um cartão e um número de identificação pessoal (senha). Dê exemplos de requisitos de confidencialidade, integridade e disponibilidade associados com esse sistema e, em cada caso, indique o grau de importância desses requisitos.**  
   **Solução:**  
   **Confidencialidade:**  
   Requisito: Proteção dos dados do usuário, como números de contas e PINs.  
   Importância: Alta, pois a exposição de tais dados pode levar a fraudes.

   **Integridade:**  
   Requisito: Garantir que transações não sejam alteradas ou manipuladas.  
   Importância: Alta, para prevenir fraudes e garantir a precisão das transações.

   **Disponibilidade:**  
   Requisito: Garantir que os ATMs estejam funcionando e acessíveis.  
   Importância: Alta, para assegurar que os clientes possam acessar seus fundos quando necessário.


Aqui estão as duas matrizes formatadas em Markdown:

7. **Para responder as letras abaixo, por favor, consulte o livro-texto da disciplina:**

(a) **Desenhe uma matriz similar ao Quadro 1.4 que mostre o relacionamento entre serviços de segurança e ataques.**  
**Solução:**

| Serviços de Segurança       | Intercepção de comunicação (Passivo) | Análise de tráfego (Passivo) | Mascaramento (Ativo) | Repetição (Ativo) | Modificação de mensagens (Ativo) | Interrupção (Ativo) |
|-----------------------------|--------------------------------------|------------------------------|----------------------|-------------------|----------------------------------|---------------------|
| Autenticação                |                                      |                              | X                    | X                 |                                  |                     |
| Controle de acesso          |                                      |                              |                      |                   |                                  | X                   |
| Confidencialidade dos dados | X                                    | X                            |                      |                   |                                  |                     |
| Integridade de dados        |                                      |                              |                      | X                 | X                                |                     |
| Irretratabilidade           |                                      |                              | X                    | X                 |                                  |                     |



(b) **Desenhe uma matriz similar ao Quadro 1.4 que mostre o relacionamento entre mecanismos de segurança e ataques.**  
**Solução:**

| Mecanismos de Segurança     | Intercepção de comunicação (Passivo) | Análise de tráfego (Passivo) | Mascaramento (Ativo) | Repetição (Ativo) | Modificação de mensagens (Ativo) | Interrupção (Ativo) |
|-----------------------------|--------------------------------------|------------------------------|----------------------|-------------------|----------------------------------|---------------------|
| Codificação                 | X                                    | X                            |                      |                   |                                  |                     |
| Assinatura digital          |                                      |                              | X                    | X                 | X                                |                     |
| Controle de acesso          |                                      |                              |                      |                   |                                  | X                   |
| Integridade de dados        |                                      |                              |                      | X                 | X                                |                     |
| Troca de autenticação       |                                      |                              | X                    | X                 |                                  |                     |
| Preenchimento de tráfego    |                                      | X                            |                      |                   |                                  |                     |
| Controle de roteamento      |                                      |                              |                      |                   |                                  | X                   |
| Notarização                 |                                      |                              | X                    | X                 |                                  |                     |

