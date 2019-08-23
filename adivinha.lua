function metadv (a,b)
return math.ceil((a+b)/2)
end
io.write("Escolha a modalidade: Usuario adivinha (0) , Computador adivinha (1):")
m = io.read("*n")
if m == 0 then
  --Usuário adivinha
  math.randomseed(os.time())
  ce=math.random(1,1023)
  io.write("Digite o seu numero:")
  me=io.read("*n")
  r = 0
  while ce ~= me do
    if me < ce then
      io.write("1\n")
    elseif me > ce then
      io.write("-1\n")
    end
  io.write("Digite o seu numero:")
  me=io.read("*n")
  r = r+1
  end
  io.write("0\n")
  io.write("Você acertou em: ",r," tentativas\n")
  
else
  --computador adivinha
  itvi = 1
  itvf= 1023
  ce=metadv(itvi,itvf)
  r=1
  io.write("Digite 1(o seu número > que ",ce,")",", 0(O seu número = a ",ce,")",", -1(o seu número < que ",ce,")",":")
  x=io.read("*n")
  while x~=0 do
    if x==-1 then
      itvf=ce-1
    else
      itvi=ce+1
    end
   ce=metadv(itvi,itvf)
   io.write("Digite 1(o seu número > que ",ce,", 0 (O seu número = a ",ce,", -1(o seu número < que ",ce,":")
   x=io.read("*n")
   r=r+1
  end
  io.write("Acertei em: ",r," tentativas\n")
end

  
  