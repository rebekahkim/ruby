#Odds of certain roll of 2 dice

puts "In order to find the proability of a certain sum from two dice, \nEnter an integer from 2 to 12: "

n = gets.to_i

if n == 2 or 12
	puts "1/36"

elsif n == 3 or 11
	puts "1/18"

elsif n == 4 or 10
	puts "1/12"

elsif n == 5 or 9
	puts "1/9"

elsif n == 6 or 8
	puts "5/36"

elsif n == 7
	puts "1/6"
	
else
end