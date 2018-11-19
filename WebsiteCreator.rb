module Tools
  def markup(position,html)
    File.open "index.html","r+" do |file|
      lines = file.each_line.to_a
      lines[position] = (html)
      file.rewind
      file.write(lines.join)
      file.close
    end
  end
end

class Website
  include Tools

  def intro
    puts " ", "Welcome to Create My Website."
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~", " "
    puts "A command line application that will help you create your first website.", " "
    puts "Follow this interactive instruction. Pick, choose and edit your content.", " "
    puts " ", "Press enter to start or Ctrl + C to cancel."
      start = gets.chomp()
      start == "" ? system('cls') : false
  end

  def create_html
    index = File.new "index.html", "w"
    index.write('
      <!DOCTYPE html>
      <html>
      <head>

      <link rel="stylesheet" type="text/css" href="style.css">
      </head>
      ')
      index.close
    end

  def create_css
    style = File.new "style.css", "w"
    style.write("
      body{
    	background-color: #f4f4f4;
    	color: black;
    	font-family: Arial, Helvetica, San Serif;
    	font-size: 16px;
    	line-height: 1.6em;
    	margin: 0;
    }
    #website-title{
    	background-color: coral;
    	color: white;
    	text-align: center;
    }
    .container{
    	width: 80%;
    	margin: auto;
    	overflow: hidden;
    }
    #navbar{
    	background-color: #333;
    	font-size: 18px;
    }
    #navbar ul{
    	list-style: none;
    }
    #navbar li{
    	display: inline;
    	padding: 16px;
    }
    #navbar a{
    	color: white;
    	text-decoration: none;
    }
    #showcase {
      background-image:url(https://preview.ibb.co/d1pXkL/zachod2.jpg);
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
      min-height: 300px;
    }
    #showcase h1{
    	color: white;
    	font-size: 40px;
    	padding: 10px;
    	text-align: center;
    	line-height: 1.6em;
    	margin-bottom: 100px;
    }
    #main {
    	float: left;
    	width: 70%;
    	margin-top: 30px;
    }
    #sidebar {
    	float: right;
    	width: 30%;
    	margin-top: 30px;
    	box-sizing: border-box;
    	background-color: #333;
    	color: white;
    	text-align: center;
    	padding: 10px 10px 10px 10px;
    }
    #main-footer {
    	background-color: #333;
    	color: #fff;
    	text-align: center;
    	padding-top: 28px;
    	padding-bottom: 10px;
    }")
    style.close
  end

end

project = Website.new
project.intro
project.create_html
project.create_css

class Title < Website
  puts " ", "To start things of we will need to give your project a name", " "
  puts "Please type your project name below: ", " "
    $title = gets.chomp()
    system('cls')
  puts " ", "Well done! #{$title} is a very good project name.", " "
end

title = Title.new
title.markup(4,"<title>#{$title}</title>\n")

class Header < Website
  puts " ", "Now it's time to look into the content."
  puts " ", "What would be the title of your first website ?", " "
    $header = gets.chomp()
    system('cls')
  puts " ", "Good. Title #{$header} will be displayed on top of the page", " "
end

header = Header.new
header.markup(8,"
<body>
<header id='website-title'>
<div class='container'>
<h1>#{$header}</h1>
</div>
</header>")

class Navbar < Website
  puts " ", "Let's create a navigation bar. It can be very useful in the future.", " "
  puts "Now. Give names to 3 of your navbar links.", " "
  puts "Number 1: ", " "
    $num1 = gets.chomp()
  puts " ", "Number 2: ", " "
    $num2 = gets.chomp()
  puts " ", "Number 3: ", " "
    $num3 = gets.chomp()
    system('cls')
  puts " ", "Your navigation bar has been created and will be displayed accordingly", " "
end

navbar = Navbar.new
navbar.markup(14,"
<nav id='navbar'>
<div class='container'>
<ul>
<li><a href='#'>#{$num1}</a></li>
<li><a href='#'>#{$num2}</a></li>
<li><a href='#'>#{$num3}</a></li>
</ul>
</div>
</nav>\n")

class Showcase < Website
  puts " ", "Now, let's create a showcase."
  puts " ", "Showcase will be a small area of your site where you can discribe what your page is all about."
  puts " ", "In few words or sentences please describe you website, then press enter.", " "
    $showcase = gets.chomp()
    system('cls')
  puts " ", "Well done! Showcase has been created and it will be displayed under your navbar."
  puts " ", "Press enter to continue", " "
    gets.chomp()
    system('cls')
end

showcase = Showcase.new
showcase.markup(24,"
<section id='showcase'>
<div class='container'>
<h1>#{$showcase}</h1>
</div>
</section>\n")

class Main < Website

  puts " ", "Time to create the most important part of your website. How exciting!"
  puts " ", "This is when you need to decide how many paragraphs you wish to have and what headings you are going to give to each of them."
  puts " ", "We will divide them into sections. It is up to you how many sections you wish to create."
  puts " ", "To make your website clear and tidy you can choose up to 3 sections.", " "
  puts " ", "Please press enter to continue"
    gets.chomp()
    system('cls')

    while $sections != (1..3)
      puts " ", "Please enter a number of sections you wish to create.", " "
      puts " ", "Remember, you can choose up to 3 sections.", " "
        $sections = gets.chomp().to_i
      case $sections
        when 1
          system('cls')
          puts " ", "You have decided to create only one section."
          puts " ", "First, please edit your heading: ", " "
            $heading_case_one = gets.chomp()
          puts " ", "Now, please edit your paragraph: ", " "
            $paragraph_case_one = gets.chomp()
          class Toolset_one < Website
            end
              toolset_one = Toolset_one.new
              toolset_one.markup(30,"
<div class='container'>
<section id='main'>
<h1>#{$heading_case_one}</h1>
<p>#{$paragraph_case_one}</p>
</section>
</div>\n")
          break
        when 2
          system('cls')
          puts " ", "You are going to create two sections."
          puts " ", "First, please edit your first heading: ", " "
            $heading_case_two = gets.chomp()
          puts " ", "Now, please edit your first paragraph: ", " "
            $paragraph_case_two = gets.chomp()
          puts " ", "Good. Let's move on to section two."
            class Toolset_two < Website
              end
            toolset_two = Toolset_two.new
            toolset_two.markup(30,"
<div class='container'>
<section id='main'>
<h1>#{$heading_case_two}</h1>
<p>#{$paragraph_case_two}</p>
</section>
</div>\n")
          puts " ", "Please edit your second heading: ", " "
            $heading_two_case_two = gets.chomp()
          puts " ", "Now, please edit your second paragraph: ", " "
            $paragraph_two_case_two = gets.chomp()
            toolset_two.markup(37,"
<div class='container'>
<section id='main'>
<h1>#{$heading_two_case_two}</h1>
<p>#{$paragraph_two_case_two}</p>
</section>
</div>\n")
          break
        when 3
          system('cls')
          puts " ", "You are going to create three sections."
          puts " ", "First, please edit your first heading: ", " "
            $heading_case_three = gets.chomp()
          puts " ", "Now, please edit your first paragraph: ", " "
            $paragraph_case_three = gets.chomp()
            class Toolset_three < Website
              end
            toolset_three = Toolset_three.new
            toolset_three.markup(30,"
<div class='container'>
<section id='main'>
<h1>#{$heading_case_three}</h1>
<p>#{$paragraph_case_three}</p>
</section>
</div>\n")
          puts " ", "Good. Let's move on to section two."
          puts " ", "Please edit your second heading: ", " "
            $heading_two_case_three = gets.chomp()
          puts " ", "Now, please edit your second paragraph: ", " "
            $paragraph_two_case_three = gets.chomp()
            toolset_three.markup(37,"
<div class='container'>
<section id='main'>
<h1>#{$heading_two_case_three}</h1>
<p>#{$paragraph_two_case_three}</p>
</section>
</div>\n")
          puts " ", "Well done. Let's move on to section three."
          puts " ", "Please edit your third heading: ", " "
            $heading_three_case_three = gets.chomp()
          puts " ", "Now, please edit your third paragraph: ", " "
            $paragraph_three_case_three = gets.chomp()
            toolset_three.markup(44,"
<div class='container'>
<section id='main'>
<h1>#{$heading_three_case_three}</h1>
<p>#{$paragraph_three_case_three}</p>
</section>
</div>\n")
          break
      end
    end
end

class Sidebar < Website

system('cls')
puts " ", "Splendid. If you want we can now create a sidebar."
puts " ", "Sidebar is a small box which you can use ie. to cite your favourite author or a tweet.", " "

  while $sidebar != 'create' || $sidebar != 'skip'
    puts " ", "Please type 'create' to go ahead or 'skip' to move on.", " "
    $sidebar = gets.chomp().downcase

    if $sidebar == 'create'
      puts " ", "Edit your sidebar here: ", " "
      $sidebar_paragraph = gets.chomp()

      class Sidebar_create < Website
        end
        create_sidebar = Sidebar_create.new
        create_sidebar.markup(50, "
<div class='container'>
<aside id='sidebar'>
<p>#{$sidebar_paragraph}</p>
</aside>
</div><br>\n")
        break
      elsif $sidebar == 'skip'
        break
    end
  end
end

class Footer < Website

  system('cls')
  puts " ","Excellent! Time to wrap up our markup and edit out footer."
  puts " ","Your footer will be a long section at the very bottom of the page."
  puts " ","Edit your footer here: ", " "
    $footer = gets.chomp()
    system('cls')
end

footer = Footer.new
footer.markup(56,"
<div>
<footer id='main-footer'>#{$footer}</footer>
</div>
</body>
</html>\n")

puts "That's all, super simple! Your website has been created. Just click on the index.html file which has just been created for you in your directory."
