# Write a program that puts people into groups.  It should:
# * Ask the user to enter the number of groups they want to create.
# * Ask for people's names, one at a time, until the user enters `stop`.
# * Grouping strategy
#   * As an example, imagine there are three groups.
#   * First person goes in the first group.
#   * Second person goes in the second group.
#   * Third person goes in the third group.
#   * Fourth person goes in the first group.
#   * Fifth person goes in the second group.
#   * etc.
# * Ask the user for the number of a group.
# * Print the people in that group, each separated by a comma and a
#   space.  Group numbers are "1-indexed".  This means that, if the
#   user enters `1`, the first group should be printed, not the second
#   group.
# * Keep on asking the user for group numbers until the user enters
#   `stop`.

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
