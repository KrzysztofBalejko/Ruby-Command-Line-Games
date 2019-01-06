hash = { "E" => 1, "A" => 1, "I" => 1, "O" => 1, "N" => 1,
"R" => 1, "T" => 1, "L" => 1, "S" => 1, "U" => 1,
"D" => 2, "G" => 2, "B" => 3, "C" => 3, "M" => 3, "P" => 3,
"F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4, "K" => 5, "J" => 8,
"X" => 8, "Q" => 10, "Z" => 10, " " => 0 }

puts "Please enter a word: "
word = gets.chomp().upcase
separate = word.split("")

array = Array.new

separate.each do |letter|
  array.push(hash[letter].to_i)
end

puts array.reduce(:+).to_s


# Alternative version:

=begin
@words = [{1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]},
{2 => ["D", "G"]},
{3 => ["B","C","M","P"]},
{4 => ["F","H","V","W","Y"]},
{5 => ["K"]},
{8 => ["J", "X"]},
{10 => ["Q", "Z"]}]

def points(word)
  score = 0
  array = word.chars
  array.map do |letter|
    @words.each do |e|
      if e.values.flatten.include?(letter)
        score = score + e.keys.reduce(:+)
      end
    end
  end
  puts score
end

points("ANYWORDANYDAY")
=end
