function pot (x,k)
  if k ==0 then
    return 1
  elseif k<0 then
    return (1/x)*pot(1/x,-k-1)
  else
    return x*pot(x,k-1)
      end
  end
io.write("Digite o valor de x: ")
x = io.read("*n")
io.write("Digite o valor de k: ")
k = io.read("*n")
io.write(pot(x,k),"\n")