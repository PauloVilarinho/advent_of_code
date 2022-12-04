file = File.open(File.dirname(__FILE__) + "/input.txt")
file_data = file.readlines.map(&:chomp)

win = 6
draw = 3
lose = 0

points = {"X" => 0, "Y" => 3, "Z" => 6}

oponent_moves = ["A","B","C"]
our_moves = ["X", "Y", "Z"]

total_points = 0

file_data.each do |round|
  oponent_move, our_move = round.split(" ")

  total_points += points[our_move]

  oponent_position = oponent_moves.find_index(oponent_move)
  our_position = our_moves.find_index(our_move)

  if our_move == "X"
    extra_points = oponent_position == 0 ? 3 : oponent_position
    total_points += extra_points
  elsif our_move == "Y"
    extra_points = (oponent_position + 1)
    total_points += extra_points
  else
    extra_points = oponent_position == 2 ? 1 : oponent_position + 2
    total_points += extra_points
  end
end

puts total_points
