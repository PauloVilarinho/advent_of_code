file = File.open(File.dirname(__FILE__) + "/input.txt")
file_data = file.readlines.map(&:chomp)

elves = []
current = 0


file_data.each do |x|
  if x.empty?
    elves << current
    current = 0
  end
  current += x.to_i
end

elves.sort!

puts elves.last(3).sum
