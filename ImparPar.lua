math.randomseed(os.time())
j = math.random(0,1)
if j == 0 then
  io.write("Você é Par e eu sou Impar","\n")
elseif j == 1 then
  io.write("Você é Impar e eu sou Par","\n")
  end
io.write("Entre com seu numero: ")
u = io.read("*n") 
if u > 5 or u < 0 then
repeat io.write("Erro, entre com um número entre 0 e 5: ")
  u = io.read("*n")
until u <=5
end
c = math.random(0,5)
io.write("Meu número é: ", c, "\n")
if (u+c) % 2 == 0 and j == 0 then
  io.write("Parabéns!! Você ganhou", "\n")
 elseif (u+c) % 2 == 1 and j == 0 then
  io.write("Ganhei de você!!", "\n")
elseif (u+c) % 2 == 1 and j == 1 then
  io.write("Parabéns!! Você ganhou", "\n")
 elseif (u+c) % 2 == 0 and j == 1 then
   io.write("Ganhei de você!!", "\n")
end
