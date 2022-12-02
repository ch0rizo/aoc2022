array_of_data = File.foreach('day-2/data.txt', "\n").to_a

# # elf
# A = "rock"
# B = "paper"
# C = "scissors"

# # situation
# Y = "draw"
# X = "lose"
# Z = "win"

$score = 0

def myAnswer(string)
  # Win
  if string[2] == "Z"
    if string[0] == "A"
      "B"
      $score += 2
    elsif string[0] == "B"
      "C"
      $score += 3
    elsif string[0] == "C"
      "A"
      $score += 1
    end
  # Lose
  elsif string[2] == "X"
    if string[0] == "A"
      "C"
      $score += 3
    elsif string[0] == "B"
      "A"
      $score += 1
    elsif string[0] == "C"
      "B"
      $score += 2
    end
  # Draw
  elsif string[2] == "Y"
    if string[0] == "A"
      "A"
      $score += 1
    elsif string[0] == "B"
      "B"
      $score += 2
    elsif string[0] == "C"
      "C"
      $score += 3
    end
  end
end

array_of_data.each do |game|
  if game[2] == "Z"
    $score += 6
  elsif game[2] == "X"
    $score += 0
  elsif game[2] == "Y"
    $score += 3
  end
  myAnswer(game)
end
p $score