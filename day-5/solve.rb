STACKS = {}
STACKS[1] = %w(Z V T B J G R)
STACKS[2] = %w(L V R J)
STACKS[3] = %w(F Q S)
STACKS[4] = %w(G Q V F L N H Z)
STACKS[5] = %w(W M S C J T Q R)
STACKS[6] = %w(F H C T W S)
STACKS[7] = %w(J N F V C Z D)
STACKS[8] = %w(Q F R W D Z G L)
STACKS[9] = %w(P V W B J)

data = File.read("day-5/input.txt")

# move (how many) from (start stack) to (end stack)

instructions = data.split("\n")

clean_instructions = instructions.map do |instruction|
  split_instruction = instruction.split(" ")
  split_instruction.delete_at(0)
  split_instruction.delete_at(1)
  split_instruction.delete_at(2)
  only_number = split_instruction.map(&:to_i)
end

# how many = instruct[0]
# start stack =  instruct[1]
# end stack = instruct[2]

clean_instructions.each do |instruct|
  instruct[0].times do
    move = STACKS[instruct[1]].pop
    STACKS[instruct[2]].push(move)
  end
end

clean_instructions.each do |instruct|
  move = STACKS[instruct[1]].pop(instruct[0])
  STACKS[instruct[2]].push(move).flatten!
end

p STACKS

result = ""

STACKS.each do |stack|
  last = stack[1].last
  result += last
end

# PCRZWTWSG
