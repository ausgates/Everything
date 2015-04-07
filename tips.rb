


def vr
	puts "-" * 50
end
#Tip calculator
def tipCalc
	vr
	puts "**************Austin's Tip Calculator*************"
	vr
	print "What is the value of the check? "
	check = gets.chomp.to_i
	tip = check * 0.20
	total = check + tip
	print "The tip amount is #{tip}.\n"
	print "Your total is #{total}.\n"
	vr
end