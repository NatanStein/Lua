local set = {}
 U ={}
for i=1,100 do
  U[i] = true
end
function set.create () 
  return {} 
end 
function set.insere(s,x)
  s[x]=true
end
function set.remove(s,x)
  s[x]=nil
  return s
end
function set.complement(s)
  local sc={}
  for i=1,100 do
    if not s[i] then
      sc[i] = true
    end
  end
  return sc
end
function set.union(s1,s2)
  s3=set.create()
  for i,v in pairs (s1) do
    if s1[i] then
      set.insere(s3,i)
    end
  end
  for i,v in pairs (s2) do
    if s2[i] then
      set.insere(s3,i)
    end
  end
  return s3
end
function set.intersection (s1,s2)
  s3=set.create()
  for i,v in pairs (s1) do
    if set.isIn(s2,i) then
      set.insere(s3,i)
    end
  end
  return s3
end
function set.isEmpty (s)
  if #s == 0 then
    return true
  else
    return false
  end
end
function set.isIn (s,x)
  if s[x] then
    return true
  else
    return false
  end
end
function set.isSubset (s1,s2)
  local cont = 0
  for i,v in pairs (s2) do
    cont=cont+1
  end
  local cont2=0
  for i,v in pairs (s2) do
      if s1[i] then
        cont2=cont2+1
      end
  end
  if cont == cont2 then
    return true
  else
    return false
  end
end
function set.isSuperset (s1,s2)
  return set.isSubset(s2,s1)
end
return set