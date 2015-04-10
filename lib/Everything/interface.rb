#Gets user input, defines user commands
require_relative 'methods'
require_relative 'tips'
require_relative 'program'
require 'colorize'

def getInput
	clear
	log("Hello, I am your computer. What would you like to do?\n".green)
	log("(For a list of commands you can say help)\n➤ ".white)
	input = gets.chomp.downcase
	case input
	when "math" 
		doMath
	when "time"
		showTime
	when "tips"
		tipCalc
	when "help"
		help!	
	when "setup"
		setup
	when "helloworld"
		clear
		puts "hello, world" * 10000
		pause
		clear
	when "austin"
		easterEgg
	when "josh"
		josh
	when "say"
		print "What would you like to say? "
		text = gets
		say(text)
	when "about"
		about
	when "quit"
		clear
		Process.exit(0)
	when "clear"
		clear
	else
		log("Sorry, that is an invalid input. Please try again.\n".red)
		log("Press Return".white)
		pause
	end
	
end