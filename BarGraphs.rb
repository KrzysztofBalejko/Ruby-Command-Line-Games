puts "Please provide a list of numbers separated by commas: "
numbers = gets.chomp().split(",").each { |itm| puts "-" * itm.to_i }
