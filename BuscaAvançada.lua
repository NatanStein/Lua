function cria (t)
  local t = {inv={}}
end
function insere (t,v,r)
  cria(t)
  if r == 0 then
    return
  else
    local n=0
    t[n+1]=v
    t.inv[v]=#t+1
    insere(t,v+2,r-1)
  end
end
function busca (t,v)
  if t.inv[v] > 0 then
    io.write(t.inv[v])
  else
    io.write("nil","\n")
  end
end
insere(t,0,1000)
busca(t,500)

    