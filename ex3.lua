io.write("Escreva a nota da P1:")
P1 = io.read("*n")
io.write("Escreva a nota da P2:")
P2 = io.read("*n")
m = (P1+P2)/2
if m >=5 and P1 > 3 and P2 > 3 then
  io.write("Parabens você foi aprovado!!", "\n")
elseif m < 5 or P1 < 3 or P2 < 3 then
  io.write("Escreva a nota da P3:")
  P3 = io.read("*n")
  c = math.max(P1, P2)
  m2 = (c+P3)/2
  if m2 >= 5 then
    io.write("Parabens você foi aprovado!!", "\n")
  else
    io.write("Infelizmente você foi reprovado", "\n")
  end
end  
  
  