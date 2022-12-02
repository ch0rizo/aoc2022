array_of_data = File.foreach('day-2/data.txt', "\n").to_a

# # elf
# A = "rock"
# B = "paper"
# C = "scissors"

# # me
# Y = "paper"
# X = "rock"
# Z = "scissors"

$meScore = 0
$elfScore = 0

def whoWins(string)
  if (string[2] == "X" && string[0] == "C") || (string[2] == "Z" && string[0] == "B") || (string[2] == "Y" && string[0] == "A")
    if (string[2] == "X" && string[0] == "C")
      $meScore += 1
      $elfScore += 3
    elsif (string[2] == "Z" && string[0] == "B")
      $meScore += 3
      $elfScore += 2
    else
      $meScore += 2
      $elfScore += 1
    end
    $meScore += 6
    "You won!"
  #me draws
  elsif (string[2] == "X" && string[0] == "A") || (string[2] == "Y" && string[0] == "B") || (string[2] == "Z" && string[0] == "C")
    if (string[2] == "X" && string[0] == "A")
      $meScore += 1
      $elfScore += 1
    elsif (string[2] == "Y" && string[0] == "B")
      $meScore += 2
      $elfScore += 2
    else
      $meScore += 3
      $elfScore += 3
    end
    $meScore += 3
    $elfScore += 3
    "Draw! No point awarded"
  #me lost
  else (string[2] == "Z" && string[0] == "A") || (string[2] == "X" && string[0] == "B") || (string[2] == "Y" && string[0] == "C")
    if (string[2] == "Z" && string[0] == "A")
      $meScore += 3
      $elfScore += 1
    elsif (string[2] == "X" && string[0] == "B")
      $meScore += 1
      $elfScore += 2
    else
      $meScore += 2
      $elfScore += 3
    end
    $elfScore += 6
    "You lost (elf won)"
  end
end

array_of_data.each do |game|
  p whoWins(game)
end

p $meScore
p $elfScore


# #human wins




# #computer wins
# else compScore += 1
#     p "You lose."   
# end



# array_of_data.each do |game|
#   a = game[0]
#   b = game[2]
#   p game
# end

# def whoWin(a, b)
# end

# p whoWin()