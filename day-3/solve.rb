data = File.foreach('day-3/input.txt', "\n").to_a

def sum(array)
  sum = 0
  # Score
  hash_big = Hash.new(0)
  alphabeth_big = ("A".."Z").to_a
  count_big = 27

  alphabeth_big.each do |letter| 
    hash_big[letter] = count_big
    count_big += 1 
  end

  hash_low = Hash.new(0)
  alphabeth_low = ("a".."z").to_a
  count_low = 1

  alphabeth_low.each do |letter| 
    hash_low[letter] = count_low
    count_low += 1 
  end
  
  array.each do |charValue|
    if /[[:upper:]]/.match?(charValue)
      sum += hash_big[charValue]
    else
      sum += hash_low[charValue]
    end
  end
  sum
end

new_data = data.map do |rucksack|
  rucksack.gsub("\n", "")
end

def commonChar(array)
  result = array[0].chars & array[1].chars
end

def charValues(new_data)
  values = new_data.map do |rucksack|
    middle = rucksack.length / 2
    commonChar([rucksack.slice(0..middle-1), rucksack.slice(middle..-1)])
  end
end

p sum(charValues(new_data).flatten)