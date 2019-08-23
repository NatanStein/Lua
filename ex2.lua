io.write("Escreva o primeiro numero:")
n1 = io.read("*n")
io.write("Escreva o segundo numero:")
n2 = io.read("*n")
io.write("Escreva o terceiro numero:")
n3 = io.read("*n")
if n1 >= n2 and n1 >= n3 and n2 >= n3 then
io.write(n3, " ", n2, " ", n1, "\n" ) 
end
if n1 >= n2 and n1 >= n3 and n2 <= n3 then
io.write(n2, " ", n3, " ", n1, "\n" ) 
end


if n2 >= n1 and n2 >= n3 and n1 >= n3 then
io.write(n3, " ", n1, " ", n2, "\n" ) 
end
if n2 >= n1 and n2 >= n3 and n1 <= n3 then
io.write(n1, " ", n3, " ", n2, "\n" ) 
end


if n3 >= n1 and n3 >= n2 and n1 >= n2 then
io.write(n2, " ", n1, " ", n3, "\n" ) 
end
if n3 >= n1 and n3 >= n2 and n1 <= n2 then
io.write(n1, " ", n2, " ", n3, "\n" ) 
end

