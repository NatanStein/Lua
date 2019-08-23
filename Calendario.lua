function diaini (mes,ano)
  local t = os.time ({day=1 ,month = mes , year = ano})
  local data=os.date("*t",t)
  return data.wday
end
function bissexto(ano)
  if ano % 400 == 0 then
    return true
  elseif ano % 100 == 0 then
    return false
  elseif ano % 4 == 0 then
    return true
  else
    return false
  end
end
function ndiasmes(mes,ano)
  if mes == 2 then
    if bissexto(ano) then
      return 29
    else
      return 28
    end
  elseif mes == 1 or mes == 3 or mes == 5 or mes == 7 or
    mes == 8 or mes == 10 or mes == 12 then
    return 31
  else
    return 30
  end
end
function calendarioAD (mes,ano)
  io.write("\n",mes," ",ano,"\n")
  io.write("D\tS\tT\tQ\tQ\tS\tS\n")
  local ini = diaini(mes,ano)
  for i = 1 , ini-1 do
    io.write("\t")
  end
  for dia = 1,ndiasmes(mes,ano) do
    io.write(dia)
    if (dia + ini-1) % 7 == 0 then
      io.write("\n")
    else
      io.write("\t")
    end
  end
io.write("\n")
end
io.write("Digite o mês:")
mesl=io.read("*n")
io.write("Digite o ano:")
anol=io.read("*n")
calendarioAD(mesl-1,anol)
calendarioAD(mesl,anol)
calendarioAD(mesl+1,anol)
  