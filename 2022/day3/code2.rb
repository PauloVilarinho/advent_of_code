file = File.open(File.dirname(__FILE__) + "/input.txt")
file_data = file.readlines.map(&:chomp)

sum = 0

file_data.each_slice(3) do |group|

  letter = (group[0].split("") & group[1].split("") & group[2].split("")).first

  if letter == letter.upcase
    sum += (letter.ord - 38)
  else
    sum += (letter.ord - 96)
  end

end

puts sum
