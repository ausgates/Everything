# Methods
require 'rainbow'
require './tips.rb'
require 'colorize'
def log(input)
  input.length.times do |i|
    print input[i]
    sleep 0.01
  end
def setup
	print "What is your name? "
	name = gets.chomp
	print "How old are you? "
	age = gets.chomp.to_i
	print "Thank you, setup is complete...\n"
	vr
	print "Press any key to continue\n"
	pause
end
def showTime
	time = Time.now
	puts time
end

def doMath
	print "Number 1: "
	number1 = gets.chomp.to_i
	print "Number 2: "
	number2 = gets.chomp.to_i
	print "Operator (+, -, *, /) "
	op = gets.chomp
	case op
	when "+"
		answer = number1 + number2
		puts "Answer: #{answer}"
	when "-"
		answer = number1 - number2
		puts "Answer: #{answer}"
	when "*"
		answer = number1 * number2
		puts "Answer: #{answer}"
	when "/"
		answer = number1 / number2
		puts "Answer: #{answer}"
	end
	end
end
def getInput
	log("Hello, I am your computer. What would you like to do? (For a list of commands you can say help) ".green)
	input = gets.chomp.downcase
	if input == "math" 
		doMath

	elsif input == "time"
		showTime
	elsif input == "tips"
		tipCalc
	elsif input == "help"
		help!	
	elsif input == "setup"
		setup
	elsif input == "helloworld"
		puts "hello, world" * 10000
	elsif input == "austin"
		easterEgg
	elsif input == "about"
		about
	elsif input == "quit"
		clear
		Process.exit(0)
	elsif input == "clear"
		clear
	else
		log("Sorry, that is an invalid input. Please try again.\n".red)
	end
end

def help! 
	puts "\n\nYou can say\n\tMath\tA basic calculator\n\tTime\tShows the time\n\ttips\tOpen a tip calculator\n\tclear\tClears the screen\n\tquit\tQuits the program\nPress any key to continue...\n\n"
	pause
end

def pause
  STDIN.gets
end

def clear
  system('clear')
end

def easterEgg 
	puts "\n────────█████─────────────█████\n
────████████████───────████████████\n
──████▓▓▓▓▓▓▓▓▓▓██───███▓▓▓▓▓▓▓▓▓████\n
─███▓▓▓▓▓▓▓▓▓▓▓▓▓██─██▓▓▓▓▓▓▓▓▓▓▓▓▓███\n
███▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███\n
██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██\n
██▓▓▓▓▓▓▓▓▓──────────────────▓▓▓▓▓▓▓▓██\n
██▓▓▓▓▓▓▓─██───████─█──█─█████─▓▓▓▓▓▓██\n
██▓▓▓▓▓▓▓─██───█──█─█──█─██────▓▓▓▓▓▓██\n
███▓▓▓▓▓▓─██───█──█─█──█─█████─▓▓▓▓▓▓██\n
███▓▓▓▓▓▓─██───█──█─█──█─██────▓▓▓▓▓▓██\n
─███▓▓▓▓▓─████─████─████─█████─▓▓▓▓███\n
───███▓▓▓▓▓──────────────────▓▓▓▓▓▓███\n
────████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓████\n
─────████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓████\n
───────████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█████\n
──────────████▓▓▓▓▓▓▓▓▓▓▓▓████\n
─────────────███▓▓▓▓▓▓▓████\n
───────────────███▓▓▓███\n
─────────────────██▓██\n
──────────────────███\n
────────█████─────────────█████\n
────████████████───────████████████\n
──████▓▓▓▓▓▓▓▓▓▓██───███▓▓▓▓▓▓▓▓▓████\n
─███▓▓▓▓▓▓▓▓▓▓▓▓▓██─██▓▓▓▓▓▓▓▓▓▓▓▓▓███\n
███▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███\n
██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██\n
██▓▓▓▓───────────────────────────▓▓▓▓██\n
██▓▓─███──█─████─█───█─████─█████──▓▓██\n
██▓▓─██─█─█─█────█───█─█────█──██──▓▓██\n
██▓▓─██─█─█─████─██─██─████─████───▓▓██\n
██▓▓─██─█─█─█─────███──█────█──██──▓▓██\n
██▓▓─██──██─████───█───████─█──███─▓▓██\n
─██▓▓▓───────────────────────────▓▓▓███\n
───███▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███\n
────████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓████\n
─────████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓████\n
───────████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█████\n
──────────████▓▓▓▓▓▓▓▓▓▓▓▓████\n
─────────────███▓▓▓▓▓▓▓████\n
───────────────███▓▓▓███\n
──────────────────███\n
────────█████─────────────█████\n
────████████████───────████████████\n
──████▓▓▓▓▓▓▓▓▓▓██───███▓▓▓▓▓▓▓▓▓████\n
─███▓▓▓▓▓▓▓▓▓▓▓▓▓██─██▓▓▓▓▓▓▓▓▓▓▓▓▓███\n
███▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███\n
██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██\n
██▓▓▓▓▓▓▓────────────────────▓▓▓▓▓▓▓▓██\n
██▓▓▓▓▓───████▄─███─████─█████──▓▓▓▓▓██\n
███▓▓▓▓───██──█──█──█────█──────▓▓▓▓███\n
███▓▓▓▓───██──█──█──████─█████──▓▓▓▓███\n
─███▓▓▓───██──█──█──█────────█──▓▓▓▓██\n
──████▓───████▀─███─████─█████──▓████\n
───███▓▓───────────────────── ▓▓▓███\n
────████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓████\n
─────████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓████\n
───────████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓████\n
──────────████▓▓▓▓▓▓▓▓▓▓▓████\n
─────────────███▓▓▓▓▓▓▓███\n
───────────────███▓▓▓███\n
─────────────────██▓██\n
──────────────────███\n
"
end

def about
	puts "This program was written by Austin Gates.\nYou can find this program at http://github.com/ausgates/everything\nThank you."











