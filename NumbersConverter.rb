def numbers_converter(number)

hash1 = { "0" => "zero", "1" => "one", "2" => "two", "3" => "three",
"4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight",
"9" => "nine" }
hash2 = { "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen",
"14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen",
"18" => "eighteen", "19" => "nineteen" }
hash3 = { "20" => "twenty", "30" => "thirty", "40" => "fourty",
"50" => "fifty", "60" => "sixty", "70" => "seventy",
"80" => "eighty", "90" => "ninety", "100" => "hundred" }

  if number.length == 1
    print hash1[number]
  elsif number.length == 2 && number[0] == "1"
    print hash2[number]
  elsif number.length == 2 && number[0] != "1"
    z = Array.new
    z << number.each_char.each_slice(1).map{|x| x.join}
    a = (z.flatten[0].to_i * 10).to_s
    b = z.flatten[1]
    print hash3[a],"-", hash1[b]
  elsif number == "100"
    print "hundred"
  elsif number == "0"
    print "zero"
  else
    print "Please enter only numbers between 0 to 100 in string format"
  end
end


puts "Welcome to my numbers converter", " "
puts "Please enter only numbers between 0 to 100: "
choice = gets.chomp()

numbers_converter(choice)
puts " "