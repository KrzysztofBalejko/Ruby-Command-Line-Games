puts "Enter number of groups"
number = gets.chomp().to_i

 group1 = []
 group2 = []
 group3 = []

 count = 0

while number > 0 do
  puts "Enter a name"
  name = gets.chomp()
  break if name == "stop"
  count += 1
  case number
  when 3
  if count == 1 || count == 4 || count == 7
    group1 << name
  elsif count == 2 || count == 5 || count == 8
    group2 << name
  elsif count == 3 || count == 6 || count == 9
    group3 << name
  end
  when 2
  if count == 1 || count == 3 || count == 5
   group1 << name
  elsif count == 2 || count == 4 || count == 6
   group2 << name
  end
  when 1
   if count == 1 || count == 2 || count == 3
    group1 << name
   end
  end
end

loop do
  puts "Enter the number of a group to print out"
  print = gets.chomp()
  break if print == "stop"
  if print == "3"
    puts "#{group3.join(", ")}"
  elsif print == "2"
    puts "#{group2.join(", ")}"
  elsif print == "1"
    puts "#{group1.join(", ")}"
  end
end
