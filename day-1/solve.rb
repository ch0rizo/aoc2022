data = File.foreach('data.txt', "\n\n").to_a

summed_groups = data.map do |group|
  group.split("\n").map(&:to_i).sum
end

p summed_groups.max(3).sum