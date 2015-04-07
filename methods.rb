# Methods
require 'rainbow'
require './tips.rb'
require 'colorize'

#Makes the cool typing effect
def log(input)
  input.length.times do |i|
    print input[i]
    sleep 0.01
  end

#Completely pointless
def setup
	clear
	print "What is your name? "
	name = gets.chomp
	print "How old are you? "
	age = gets.chomp.to_i
	print "Thank you, setup is complete...\n"
	vr
	print "Press any key to continue\n"
	pause
	clear
end

#Obvious
def showTime
	time = Time.now
	clear
	puts time
	pause
end

#Also obvious
def doMath
	clear
	print "Number 1: "
	number1 = gets.chomp.to_i
	print "Number 2: "
	number2 = gets.chomp.to_i
	print "Operator (+, -, *, /) "
	op = gets.chomp
	case op
	when "+"
		answer = number1 + number2
		puts "Answer: #{answer}\n\nPress return to continue."
	when "-"
		answer = number1 - number2
		puts "Answer: #{answer}\n\nPress return to continue."
	when "*"
		answer = number1 * number2
		puts "Answer: #{answer}\n\nPress return to continue."
	when "/"
		answer = number1 / number2
		puts "Answer: #{answer}\n\nPress return to continue."
	end
	pause
end
end

#Gets user input, defines user commands
def getInput
	clear
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
		clear
		puts "hello, world" * 10000
		pause
		clear
	elsif input == "austin"
		easterEgg
	elsif input == "josh"
		josh
	elsif input == "say"
		print "What would you like to say? "
		text = gets
		say(text)
	elsif input == "about"
		about
	elsif input == "quit"
		clear
		Process.exit(0)
	elsif input == "clear"
		clear
	else
		log("Sorry, that is an invalid input. Please try again.\n".red)
		pause
	end
end

#Help command
def help! 
	clear
	puts "\n\nYou can say\n\tMath\tA basic calculator\n\tTime\tShows the time\n\ttips\tOpen a tip calculator\n\tsay\tthe computer says what you type, now in blue!\n\tclear\tClears the screen\n\tquit\tQuits the program\nPress any key to continue...\n\n"
	pause
end

#Waits for user input, usually just enter
def pause
  STDIN.gets
end

#Clears the screen
def clear
  system('clear')
end

#Just for fun
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
pause
clear
end

#Prints user input onto screen in blue
def say(text)
	clear
	puts text.blue
	pause
	clear
end

#Tells you about this program
def about
	clear
	puts "This program was written by Austin Gates.\nYou can find this program at http://github.com/ausgates/everything\nThank you."
	pause
end

#Says thank you to Josh (https://github.com/trommel)
def josh
	clear
	puts "Thank you for all the help and answering stupid questions along the way."
	pause
	clear
end










