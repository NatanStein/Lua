ve = function(r)
  return 4/3*(math.pi*r^3)
end

vc = function(r,h)
  return math.pi*((r^2)*h)
end

vce = function(r,h)
return 1/3*(math.pi*(h^2)*(3*r-h))
end

vt = function(d,D)
  local R = D/2
  local r = d/2
  local hc = (math.sqrt(D^2 - d^2)) 
  local hca = (D-hc)/2
 return ve(R) - vc(r,hc) - 2*vce(R,hca)
end

io.write("Escreva o valor de d: ")
d=io.read("*n")
io.write("Escreva o valor de D: ")
D=io.read("*n")
io.write("O volume da nova figura = ", vt(d,D),"\n")
