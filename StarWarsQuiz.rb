def save_score

    time = Time.new
    save_score = File.new "scores.txt", "w"
    File.open "scores.txt", "r+" do |file|
    file.write("Player 1 #{$points} " + time.inspect)
    file.close()
  end
end

def save_it

  puts " ", "Do you want to save your score ? [Yes/No]", " "
  $save = gets.chomp.downcase
  system('cls')
  if $save == "yes"
    save_score
      puts " ", "Your record has been saved"
      puts " ", "Press enter to play again or Ctrl + C to quit the quiz"
      gets.chomp()
      system('cls')
    else
      puts " ", "Press enter to play again or Ctrl + C to quit the quiz"
      gets.chomp()
      system('cls')
  end
end

def start

$points = 0

questions = {
"Who is Luke Skywalker’s dad?" => "Anakin Skywalker",
"Which is the only film of the original six in which desert planet Tatooine doesn’t appear?" => "The Empire Strikes Back",
"Which 1981 blockbuster features characters from the Original Trilogy carved on to an ancient wall?" => "Raiders of the Lost Ark",
"What’s the name of the green-skinned bounty hunter Han Solo kills in Mos Eisley’s cantina?" => "Greedo",
"Who kills Jabba The Hutt?" => "Princess Leia",
"Which of the Original Trilogy films has the most deaths?" => "A New Hope",
"Which character does Ewan McGregor’s uncle, Denis Lawson, play in the Original Trilogy?" => "Wedge",
"Who was originally called Buffy?" => "Yoda",
"Which prop ended up nicknamed ‘The Porkburger’ by the special-effects crew?" => "Millennium Falcon",
"What was Luke Skywalker’s original surname? " => "Starkiller"
}

  questions.each do |i,j|
    puts i
    answer = gets.chomp
    system('cls')
    if answer == j || answer == j.downcase
      puts " ","good answer !"," "
      puts ["Press enter to continue", "Click enter to move on to another question"].sample
        gets.chomp()
      system('cls')
      $points += 1
    else
      puts " ","wrong answer !"," "
      puts ["Press enter to continue", "Click enter to move on to another question"].sample
        gets.chomp()
      system('cls')
    end
  end

  case $points
    when 0..2
      puts " ", "You did poorly and scored only #{$points}/10 points", " "
      save_it
        start
    when 3..5
      puts " ", "You did ok but scored only #{$points}/10 points", " "
      save_it
        start
    when 6..9
      puts " ", "Well done you got #{$points}/10 points", " "
      save_it
        start
    when 10
      puts " ", "You must be a jedi ! You answered all of the questions !", " "
      save_it
        start
  end
end

start
