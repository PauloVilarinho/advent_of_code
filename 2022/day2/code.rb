file = File.open(File.dirname(__FILE__) + "/input.txt")
file_data = file.readlines.map(&:chomp)

win = 6
draw = 3
lose = 0

points = {"X" => 1, "Y" => 2, "Z" => 3}

oponent_moves = ["A","B","C"]
our_moves = ["X", "Y", "Z"]

total_points = 0

file_data.each do |round|
  oponent_move, our_move = round.split(" ")

  total_points += points[our_move]

  oponent_position = oponent_moves.find_index(oponent_move)
  our_position = our_moves.find_index(our_move)

  if our_position == oponent_position
    total_points += 3
  elsif our_position - oponent_position == 2 || our_position - oponent_position == -1
    total_points += 0
  else
    total_points += 6
  end
end

puts total_points
