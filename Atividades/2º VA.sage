#Questão 5 da 2ª VA
# Função para calcular as raízes quadradas modulares
def mod_sqrt(x, p):
    # Se p ≡ 3 (mod 4), usamos a fórmula x^((p+1)/4) mod p
    return power_mod(x, (p+1)//4, p)

# Função para aplicar o Teorema Chinês dos Restos (CRT)
def crt_combine(x1, x2, p, q):
    # Combina x1 (mod p) e x2 (mod q) usando CRT para encontrar a solução mod p*q
    return crt([x1, x2], [p, q])

# Função para encontrar até 4 possíveis estados anteriores do BBS
def find_previous_bbs_state(x, p, q):
    # Encontrar as raízes quadradas de x mod p e mod q
    sqrt_p1 = mod_sqrt(x, p)
    sqrt_p2 = p - sqrt_p1
    sqrt_q1 = mod_sqrt(x, q)
    sqrt_q2 = q - sqrt_q1

    # Lista de possíveis estados anteriores combinados pelo CRT
    possible_states = [
        crt_combine(sqrt_p1, sqrt_q1, p, q),
        crt_combine(sqrt_p1, sqrt_q2, p, q),
        crt_combine(sqrt_p2, sqrt_q1, p, q),
        crt_combine(sqrt_p2, sqrt_q2, p, q)
    ]

    return possible_states

# Teste com valores de p e q (ambos p ≡ 3 (mod 4))
p = 11  # Exemplo: p ≡ 3 (mod 4)
q = 19  # Exemplo: q ≡ 3 (mod 4)
n = p * q

# Estado atual (um valor do BBS gerado pelo estado anterior ao quadrado mod n)
current_state = 121  # Exemplo de estado atual

# Encontrar os possíveis estados anteriores
previous_states = find_previous_bbs_state(current_state, p, q)

# Mostrar os resultados
print("Possíveis estados anteriores:")
for state in previous_states:
    print(state)
