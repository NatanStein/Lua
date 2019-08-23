function calcnumdias (d,m,a,hoje)
  local nascimento = os.time({ day=d , month=m, year=a})
  if hoje == 1 then
    local h = os. time ()
    local dif = h - nascimento
    return dif/24/60/60
  else 
    io.write("Digite a data em que você quer saber(dd mm aaaa): ")
    df , mf , af = io.read ("*n","*n","*n") 
    local h = os. time ({day=df , month=mf, year=af})
    local dif = h - nascimento
    local t = dif/24/60/60
    local f = math.sin((2*math.pi*t)/23)
    local e = math.sin((2*math.pi*t)/28)
    local i = math.sin((2*math.pi*t)/33)
    io.write("O seu Físico na data desejada = ",string.format("%.2f",f),"\n")
    io.write("O seu Emocional na data desejada = ",string.format("%.2f",e),"\n")
    io.write("O seu Intelectual na data desejada = ",string.format("%.2f",i),"\n")
  end
end
function F (d,m,a,hoje)
  local t=calcnumdias(d,m,a,hoje)
  local f = math.sin((2*math.pi*t)/23)
  return f
end
function E (d,m,a,hoje)
  local t=calcnumdias(d,m,a,hoje)
  local e = math.sin((2*math.pi*t)/28)
  return e
end
function I (d,m,a,hoje)
  local t=calcnumdias(d,m,a,hoje)
  local i = math.sin((2*math.pi*t)/33)
  return i
end

---Bloco Principal---

io.write("Digite a opção que você quer (1,2,3): ")
z=io.read("*n")
if z == 1 then
  data = os.date("*t")
  io.write("Digite a sua data de nascimento(dd mm aaaa): ")
  dia , mes , ano = io. read ("*n","*n","*n") 
  io.write("O seu Fisico hoje é = ",string.format("%.2f",F(dia,mes,ano,1)),"\n")
  io.write("O seu Emocional hoje é = ",string.format("%.2f",E(dia,mes,ano,1)),"\n")
  io.write("O seu Intelectual hoje é = ",string.format("%.2f",I(dia,mes,ano,1)),"\n")
elseif z ==2 then
  io.write("Digite a sua data de nascimento(dd mm aaaa): ")
  dia , mes , ano = io.read ("*n","*n","*n") 
  calcnumdias(dia,mes,ano,0)
else 
  io.write("Digite a sua data de nascimento(dd mm aaaa): ")
  d , m , a = io. read ("*n","*n","*n")
  nascimento = os.time({ day=d, month=m, year=a})
  local PD = 0
  local inp = 0
  local hj = os.time()
  while true do
    local dif = (hj+inp)
    dif = dif - nascimento
    local t = dif/24/60/60
    local f = math.sin((2*math.pi*t)/23)
    local e = math.sin((2*math.pi*t)/28)
    local i = math.sin((2*math.pi*t)/33)
    if f > 0.8 and e > 0.8 and i > 0.8 then
      PD = dif + nascimento 
      break
    end
  inp = inp +86400
end
PD = os.date("*t",PD)
io.write("Acontecerá na data: ",PD.day,"/",PD.month,"/",PD.year,"\n")
end