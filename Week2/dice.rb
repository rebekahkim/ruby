#dice probability using arrays and hashes

dice1 = [1, 2, 3, 4, 5, 6]
dice2 = Array(1..6)

possib_combin = dice1.product(dice2).map{|pair| pair.first + pair.last}


numbers = Hash.new

i = 2
until i == 13
	numbers[i] = possib_combin.count(i)
	i += 1
end


print "Enter the sum from a roll of two dice: "
user_input = gets.to_i

puts "The probability of rolling a sum of #{user_input}: #{numbers[user_input]}/36"

#print possib_combin.sort

# possib_combin.flatten!
# print possib_combin
# puts "\n"

# until possib_sum.length == 36
# 	i = 0
# 	possib_sum = possib_combin[i] + possib_combin[i + 1]
# 	i += 2
# end

# print possib_sum
# print "\n"

# print possib_combin
# print "\n"
# puts possib_combin.count([3,4])
# puts possib_combin.length

# until possib_combin.size == 18	<- Looks like a good place for two nested `for` loops rather than two sequential loops!  ^JH
# 	i = 3
# 	possib_combin << dice1[i] + dice2[0]
# 	i += 1
# end
# until possib_combin.size == 36
# 	j = 0
# 	possib_combin << dice1[0] + dice2[j]
# 	j += 1
# end

#puts possib_combin.sort

# one_to_twelve = Hash["2".."12"]
# puts one_to_twelve[12]

# puts one_to_twelve.size
# puts dice2.sort
#puts dice2.length

# puts dice1.sort
# puts dice1.size
# puts dice1[-3]
