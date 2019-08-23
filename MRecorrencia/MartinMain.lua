local arq = io.open("martinlutherking.txt","r")
local titulo = arq:read()
local autor = arq:read()
local texto = arq:read("*a")
arq:close()
local pal={}
local rest={entre=true,
  sobre=true,
  dessa=true,
  }
textos=string.gsub(texto,"([^%s%p]+)",
function(ch)
    if #ch > 4 and not rest[ch] then
      ch=string.lower(ch)
      if not pal[ch] then
        pal[ch]=1
      else
        pal[ch]=pal[ch]+1
      end
    end
 return ""
end
)
local vet = {}
for k,v in pairs (pal) do
vet[#vet+1] = {p = k,n = v }
end

table.sort (vet,function (a,b)
    if a.n > b.n  then
      return true
    elseif a.n < b.n then
      return false
    else
      return a.p < b.p
    end
  end
)
local saida = io.open("palavrasML.txt","w")
saida:write("Titulo: ",titulo,"\n")
saida:write("Autor: ",autor,"\n\n")
saida:write("Palavras mais citadas:\n\n")
for i=1,50 do
  local linha = string.format("%2d. %-14s %10d \n",i,vet[i].p,vet[i].n)
  saida:write(linha)
end
saida:close()
