file = File.open(File.dirname(__FILE__) + "/input.txt")
file_data = file.readlines.map(&:chomp)

sum = 0

file_data.each do |bag|
  first, second = bag.chars.each_slice(bag.length / 2).map(&:join)
  puts "this is the first part: #{first}"
  puts "this is the second part: #{second}"
  letter = (first.split('') & second.split('')).first

  if letter == letter.upcase
    sum += (letter.ord - 38)
  else
    sum += (letter.ord - 96)
  end
end

puts sum
