def random_card
cards = ["two", "three", "four", "five", "six", "seven",
        "eight", "nine", "ten",
        "jack", "queen", "king", "ace"]
  cards[rand(13)]
end

$hand = Array.new
$score = Array.new
$play_global = true

def score_calculator
  hash = { "two" => 2, "three" => 3, "four" => 4, "five" => 5,
  "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9,
  "ten" => 10, "jack" => 10, "queen" => 10, "king" => 10,
  "ace" => 11 }
  $score.clear
  $hand.each { |item| $score << hash[item] }
end

def run_game
play = true

while play == true do
  puts "Do you want to hit or stick ? "
  move = gets.chomp()

  if move == "hit"
   $hand << random_card
   print $hand
   puts " "
   score_calculator()
   puts "Score so far: #{$score.reduce(:+)}"
   play = false
 elsif move == "stick"
   if $score.reduce(:+) <= 21
    puts "You scored: #{$score.reduce(:+)}"
   elsif $score.reduce(:+) > 21
    puts "You busted with: #{$score.reduce(:+)}"
   end
   play = false
   $play_global = false
  end
 end
end

while $play_global == true do
  run_game()
end
