function busca (t,val)
  for i=1,#t do
    if t[i] == val then
      return i
    end
  end
return "nil"
end
local t={5,6.5,7,8.1}
io.write(busca(t,5),"\n")

    