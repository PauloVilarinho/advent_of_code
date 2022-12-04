file = File.open(File.dirname(__FILE__) + "/input.txt")
file_data = file.readlines.map(&:chomp)

def generate_array(schedule)
  start, ending = schedule.split("-")
  Range.new(start,ending).to_a
end

def array_include?(array_1, array_2)
  (array_1 - array_2).empty? or (array_2 - array_1).empty?
end

sum = 0


file_data.each do |pair|
  first_elv,second_elv = pair.split(',')

  first_array = generate_array(first_elv)
  second_array = generate_array(second_elv)

  if array_include?(first_array, second_array)
    sum += 1
  end
end

puts sum
