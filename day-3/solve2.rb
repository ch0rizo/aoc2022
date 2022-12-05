data = File.foreach('day-3/input.txt', "\n").to_a

new_data = data.map do |rucksack|
  rucksack.gsub("\n", "")
end

$sum = 0

def sum(array)
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
      $sum += hash_big[charValue]
    else
      $sum += hash_low[charValue]
    end
  end
end

times = new_data.length / 3
count = 0

times.times do
  result = new_data[count].chars & new_data[count + 1].chars & new_data[count + 2].chars
  count += 3
  sum(result)
end

p $sum