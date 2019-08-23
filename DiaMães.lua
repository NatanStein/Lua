function diaini (ano)
  local t = os.time ({day=1 ,month = 5 , year = ano})
  local data=os.date("*t",t)
  return data.wday
end
io.write("Digite o ano que você quer saber o dia das mães: ")
ano=io.read("*n")
if diaini(ano) == 1 then
  io.write("O dia das mães em ",ano," é no dia 8","\n")
else
  local diam = (8-diaini(ano))+8
  io.write("O dia das mães em ",ano," é no dia ",diam,"\n")
 end
 