function minmax (t)
  max=t[1]
  min=t[1]
  for i=2, #t do
    if max < t[i] then
      max=t[i]
    elseif min > t[i] then
      min = t[i]
    end
  end
  return 
end
local t ={4.5 , 6.5 , 9.8 , 8.1 , 4.3 , 10.0}
minmax(t)
io.write("O valor máximo = ",max," e o valor mínimo = ",min,"\n")
    