class Question
  @@money_earned = 0

  def cls
    system('cls')
  end

  def correct_or_not(answer, correct_answer)

    if answer == correct_answer or answer == correct_answer.downcase
      @@money_earned += 100000
      cls
      puts " "
      puts ["And that's a good answer !", "Correct answer!", "Well done!", "That was a correct answer!"].sample
      puts " "
      puts "You have earned $100000 and you have $#{@@money_earned} on your account"
      puts " "
      puts "Click enter to continue"
      continue = gets.chomp()
      case continue
        when ""
          cls
        end
    else
      puts "I'm sorry the corret answer was #{correct_answer}"
      puts " "
      puts "-Game over!-"
      exit(0)
    end
  end

  def you_win

    puts " "
    puts "Congratulations! You are a millionaire!"
    puts " "
    puts "-You won!-"
    exit(0)
  end

  def next_question
    puts " "
    puts ["Time for another question. Are you ready ?", "Are you ready for another question?", "And the next question is.."].sample
    puts " "
    puts "Click enter to continue"
    continue = gets.chomp()
    case continue
    when ""
      cls
    end
    puts " "
  end
end

#Q1

class One < Question

  def run
    puts " "
    puts "In the UK, VAT stands for value-added ...?"
    puts " "
    puts "<Transaction> <Total> <Tax> <Trauma>"
    puts " "
    answer = gets.chomp()
    correct_answer = "Tax"
    correct_or_not(answer, correct_answer)
  end
end

#Q2

class Two < Question

  def run
    puts " "
    puts "Which of these might be used in underwater naval operations?"
    puts " "
    puts "<Frogmen> <Newtmen> <Toadmen> <Tadpolemen>"
    puts " "
    answer = gets.chomp()
    correct_answer = "Frogmen"
    correct_or_not(answer, correct_answer)
  end
end

#Q3

class Three < Question

  def run
    puts " "
    puts "What are you said to do to a habit when you break it?"
    puts " "
    puts "<Throw it> <Punch it> <Kick it> <Eat it>"
    puts " "
    answer = gets.chomp()
    correct_answer = "Kick it"
    correct_or_not(answer, correct_answer)
  end
end

#Q4
class Four < Question

  def run
    puts " "
    puts "Which colour is used as a term to describe an illegal market in
        rare goods? "
    puts " "
    puts "<Blue> <Red> <Black> <White>"
    puts " "
    answer = gets.chomp()
    correct_answer = "Black"
    correct_or_not(answer, correct_answer)
  end
end
#Q5
class Five < Question

  def run
    puts " "
    puts "How is a play on words commonly described?"
    puts " "
    puts "<Pan> <Pin> <Pen> <Pun>"
    puts " "
    answer = gets.chomp()
    correct_answer = "Pun"
    correct_or_not(answer, correct_answer)
  end
end
#Q6
class Six < Question

  def run
    puts " "
    puts "Which word follows 'North' and 'South' to give the names of two
        continents?"
    puts " "
    puts "<Africa> <America> <Asia> <Australia>"
    puts " "
    answer = gets.chomp()
    correct_answer = "America"
    correct_or_not(answer, correct_answer)
  end
end
#Q7
class Seven < Question

  def run
    puts " "
    puts "Which is not the name of an English county?"
    puts " "
    puts "<Lancashire> <Leicestershire> <Liverpoolshire> <Lincolnshire>"
    puts " "
    answer = gets.chomp()
    correct_answer = "Liverpoolshire"
    correct_or_not(answer, correct_answer)
  end
end
#Q8
class Eight < Question

  def run
    puts " "
    puts "Which of these is a fashionable district of London?"
    puts " "
    puts "<Bulgravia> <Belgravia> <Belgrade> <Belgium>"
    puts " "
    answer = gets.chomp()
    correct_answer = "Belgravia"
    correct_or_not(answer, correct_answer)
  end
end
#Q9
class Nine < Question

  def run
    puts " "
    puts "What name is given to a playing card with a single symbol on it?"
    puts " "
    puts "<Whizz> <Hotshot> <Ace> <Star>"
    puts " "
    answer = gets.chomp()
    correct_answer = "Ace"
    correct_or_not(answer, correct_answer)
  end
end
#Q10
class Final < Question

  def run
    puts " "
    puts "And now a question worth 1 million "
    puts " "
    puts "Which of these is a spicy, Cajun chicken or seafood dish? "
    puts " "
    puts "<Gumbo> <Dumbo> <Bimbo> <Rambo>"
    puts " "
    answer = gets.chomp()
    correct_answer = "Gumbo"
    correct_or_not(answer, correct_answer)
  end
end


class Start

puts " "
puts "Welcome to 'Who Wants To Be a Millionaire' !"
puts " "
puts "Please press enter to play or Ctrl + C to exit the game"
play = gets.chomp()
case play
  when ""
    system('cls')
  end

puts " "
puts "Time for our first question."
puts " "

def engine

  one = One.new
  two = Two.new
  three = Three.new
  four = Four.new
  five = Five.new
  six = Six.new
  seven = Seven.new
  eight = Eight.new
  nine = Nine.new
  final = Final.new

  [one, two, three, four, five, six, seven, eight, nine, final].map do |i|
    if i != final
      i.run
      i.next_question
    else
      final.run
      final.you_win
    end
  end
  end
end

start = Start.new
start.engine
