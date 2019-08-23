function le_notas (nomearq)
local arq = io.open(nomearq,"r")
if not arq then 
  print ("Nao foi possivel abrir arquivo : ",nomearq) 
  return nil 
  end
local v = {}
local texto = arq:read("*a")
local padrao = "%s*(.-)%s+(%S+)%s+(%S+)%s+(%S+)%s+(%S+)%s+(%S+)%s-\n"
for nomel,n1,n2,n3,n4,n5 in texto:gmatch(padrao) do
v[#v+1] = {nome = nomel ,
      notas = {
      tonumber(n1) ,
      tonumber(n2),
      tonumber(n3),
      tonumber(n4),
      tonumber(n5),
    }
  }
end
  for i =1,#v do
  table.sort(v[i].notas,function(a1,a2)
    return a1 > a2
  end
  )
    local media = 
      (v[i].notas [1] + 
      v[i].notas [2] + 
      v[i].notas [3])/3 
      v[i].media = media 
  end
    table.sort(v,function(a1,a2)
        return a1.media > a2.media
      end
    )
local r={}
for i=1,4 do
r[#r+1]={nome=v[i].nome,media=v[i].media}
end
    table.sort(r,function(a1,a2)
    return a1.nome < a2.nome
    end
  )
local arqnew = io.open("premiados.txt","w")
if not arqnew then 
  print ("Nao foi possivel abrir arquivo : arqnew") 
  return nil 
end
  for i = 1,4 do 
    arqnew:write(string.format("%-25s%4.1f\n",r[i].nome , 
        r[i].media)) 
    end
    arq:close()
    arqnew:close()
return
end
le_notas("notasal.txt")
