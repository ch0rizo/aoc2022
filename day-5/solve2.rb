data = File.foreach('day-5/input2.txt', "\n").to_a

new_data = data.map do |move|
  move.gsub("\n", "")
end

dictionary = {
  "1" => %w[N Z],
  "2" => %w[D C M],
  "3" => %w[P]
}

fresh = new_data.map do |move|
  move.split(" ")
end

fresh.each do |move|
  move[1].to_i.times do
    relevent_first = dictionary[move[3]][0]
    unless relevent_first.nil?
      dictionary[move[3]].delete(relevent_first)
      dictionary[move[5]].prepend(relevent_first)
    end
  end
  p dictionary
end

