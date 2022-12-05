data = File.foreach('day-4/input2.txt', "\n").to_a

pairs_of_elves = data.map do |elve|
  elve.gsub("\n", "")
end

array_pairs = pairs_of_elves.map do |elve|
  elve.split(",")
end

final = array_pairs.map do |pair|
  new_pair = pair.map do |elve|
    elve.split("-")
  end
  final_pair = new_pair.map do |elve|
    new_num = elve.map do |num|
      num.to_i
    end
    new_num
  end
  final_pair
end

count = 0

final.each do |pair|
  if (pair[0][0] >= pair[1][0]) && (pair[0][0] <= pair[1][1])
    p pair
    count += 1
  elsif (pair[0][0] <= pair[1][0]) && (pair[1][0] <= pair[0][1])
    p pair
    count += 1
  end
end

p count
