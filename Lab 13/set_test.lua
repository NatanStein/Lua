local conj = require "set"
math.randomseed(os.time())
function len (t)
  local cont = 0
  for i,v in pairs (t) do
   if v then
    cont=cont+1
  end
  end
return cont
end
function verificaIgual (A,B)
  cont=0
  for i,v in pairs (A) do
     if A[i] and B[i] then
      cont=cont+1
    end
  end
  if cont == len(A) and cont == len(B) then
    return true
  else
    return false
  end
end
function TESTES ()
  A=conj.create()
  for i=0,math.random(0,100) do
    if i == 0 then
      A=conj.create()
    else
      x=math.random(1,100)
      repeat 
        x=math.random(1,100)
      until conj.isIn(A,x) == false
      conj.insere(A,x)
    end
  end
  for i=0,math.random(0,100) do
    if i == 0 then
      B=conj.create()
    else
      x=math.random(1,100)
      repeat 
        x=math.random(1,100)
      until conj.isIn(B,x) == false
      conj.insere(B,x)
    end
  end
  --Casos básicos
  if len(A)==0 then
    assert(conj.isEmpty(A),"Erro caso base")
  end
  if len(A)==100 then
    assert(verificaIgual(A,U),"Erro caso base")
  end
  if len(B) == 0 then
    assert(conj.isEmpty(B),"Erro caso base")
  end
  if len(B)==100 then
    assert(verificaIgual(B,U),"Erro caso base")
  end
  --Propriedade 1
  assert(verificaIgual(conj.union(A,B),conj.union(B,A)),"Erro propriedade 1")
  --Propriedade 2
  assert(verificaIgual(conj.intersection(A,B),conj.intersection(B,A)),"Erro propriedade 2")
  --Propriedade 3
  assert((conj.isSuperset(B,A) and conj.isSubset(A,B)) or ( not (conj.isSuperset(B,A)) and not (conj.isSubset(A,B))),"Erro propriedade 3")
  --Propriedade 4
  assert(verificaIgual(conj.complement(conj.intersection(A,B)),conj.union(conj.complement(A),conj.complement(B))),"Erro propriedade 4")
  --Propriedade 5
  assert(verificaIgual(conj.complement(conj.union(A,B)),conj.intersection(conj.complement(A),conj.complement(B))),"Erro propriedade 5")
end

for i = 0,5000 do
  TESTES()
end
