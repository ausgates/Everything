require "./methods.rb"
require "./tips.rb"

loop do
	getInput
	input = STDIN.gets.chomp.downcase
	break if input == "quit"
end
