stacks = {}
stacks[1] = %w(Z V T B J G R)
stacks[2] = %w(L V R J)
stacks[3] = %w(F Q S)
stacks[4] = %w(G Q V F L N H Z)
stacks[5] = %w(W M S C J T Q R)
stacks[6] = %w(F H C T W S)
stacks[7] = %w(J N F V C Z D)
stacks[8] = %w(Q F R W D Z G L)
stacks[9] = %w(P V W B J)
data = File.read("day-5/input.txt")

def rearrange
  File.readlines('day-5/input.txt', chomp: true).map do |line|
    numbers = line.split(" ")
    numbers.delete_at(0)
    numbers.delete_at(1)
    numbers.delete_at(2)
    numbers.map(&:to_i)
  end
end

rearrange.each do |instruction|
  # for each instruction: pop(index 0) from (index 1) and push into (index 2)
  instruction[0].times do
    move = stacks[instruction[1]].pop
    stacks[instruction[2]].push(move)
  end
end

result = ""

stacks.each do |stack|
  letter = stack[1].last
  result += letter
end

# PART 2

# rearrange.each do |instruction|
#   move = stacks[instruction[1]].pop(instruction[0])
#   stacks[instruction[2]].push(move).flatten!
# end


# result = ""

stacks.each do |stack|
  letter = stack[1].last
  result += letter
end

p result