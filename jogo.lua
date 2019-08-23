math.randomseed(os.time())
io.write("Entre com sua escolha: 1 (pedra), 2 (papel) ou 3 (tesoura): ")
e = io.read("*n")
if e > 3 or e < 1 then
repeat io.write("Erro, entre com um número entre 1 e 3: ")
  e = io.read("*n")
until e <= 3 and e >=1
end
ce = math.random(1,3)
if e ==1 then
 io.write("Usuário: PEDRA", "\n")
elseif e==2 then
 io.write("Usuário: PAPEL", "\n")
else
 io.write("Usuário: TESOURA", "\n")
end

if ce ==1 then
 io.write("Computador: PEDRA", "\n")
elseif ce==2 then
 io.write("Computador: PAPEL", "\n")
else
 io.write("Computador: TESOURA", "\n")
end

if e == ce then
  print("Empate")
elseif e==1 and ce==2 or e==3 and ce==1 or e==2 and ce==3 then
  print("Computador ganhou!")
elseif e==1 and ce==3 or e==2 and ce==1 or e==3 and ce==2 then
  print("Usuário ganhou!")
end