data = File.read("day-6/input.txt")

count = 0

# data.length.times do 
#   final = []
#   final += [data[0+count], data[1+count], data[2+count], data[3+count]]
#   count += 1
#   if final.uniq.length == 4
#     p final
#     p count + 3
#     return
#   end
# end

data.length.times do 
  final = []
  final += [data[0+count], data[1+count], data[2+count], data[3+count], data[4+count], data[5+count], data[6+count], data[7+count], data[8+count], data[9+count], data[10+count], data[11+count], data[12+count], data[13+count]]
  count += 1
  if final.uniq.length == 14
    p final
    p count + 13
    return
  end
end