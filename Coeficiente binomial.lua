function cb (n,k)
  if n==k or k==0 then
    return 1
  else
    return cb(n-1,k) + cb(n-1,k-1)
  end
end
io.write("Digite o valor de n: ")
n = io.read("*n")
io.write("Digite o valor de k: ")
k = io.read("*n")
io.write(cb(n,k),"\n")