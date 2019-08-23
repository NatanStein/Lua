f = function(r,h)
   v = math.pi*(r^2)*h
   a = 2*(math.pi)*(r)*(r+h)
end
io.write("Escreva o valor do raio: ")
local r = io.read("*n")
io.write("Escreva o valor da altura: ")
local h = io.read("*n")
f(r,h)
io.write("O valor do volume = ", v, " e o valor da área = ", a, "\n")