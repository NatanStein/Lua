print("Digte o preço do galão em dolares:")
C = 3.7854 --galao para litro
G = io.read("*n")
print("Digite a taxa de conversão do dolar para o real:")
T = io.read("*n")
R = G*T
L = R/C
print("O valor do litro da gasolina em real =", L) 

