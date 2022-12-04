file = File.open(File.dirname(__FILE__) + "/input.txt")
file_data = file.readlines.map(&:chomp)

max = 0
current = 0

file_data.each do |x|
  if x.empty?
    if current > max
      max = current
    end
    current = 0
  end
  current += x.to_i
end

puts max
