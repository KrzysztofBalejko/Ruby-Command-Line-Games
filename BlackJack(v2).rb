# hit - will move a random card to your hand and display score
# stick - will exit the game

def random_card
  cards = ["two", "three", "four", "five", "six", "seven",
           "eight", "nine", "ten",
           "jack", "queen", "king", "ace"]

  cards[rand(13)]
end

def move
  puts 'Do you want to "hit" or "stick"?'
  start = gets.chomp
  case start
  when "hit"
    "hit"
  when  "stick"
    "stick"
  else
    move
  end
end

def score(hand)
  hash = { "two" => 2, "three" => 3, "four" => 4, "five" => 5,
  "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9,
  "ten" => 10, "jack" => 10, "queen" => 10, "king" => 10,
  "ace" => 11 }
  the_score = Array.new
  the_score.clear
  hand.each { |item| the_score.push(hash[item]) }
  return the_score.reduce(:+)
end

def run_game
  play = true
  new_score = 0
  in_hand = Array.new
  while play
    sellected = move
    if sellected == "hit"
      in_hand.push(random_card)
      new_score = score(in_hand)
      puts "Score so far: #{new_score}"
    elsif sellected == "stick"
      if new_score <= 21
        puts "You scored: #{new_score}"
      else
        puts "You busted with: #{new_score}"
      end
      play = false
    end
  end
end

run_game()
