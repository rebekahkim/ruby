#DONE
#Euler- multiples of 3 or 5

thousand = Array(1...1000)

thousand.select!{|x| x%3 == 0 or x%5 == 0}

sum = thousand.reduce :+

puts sum


#Another way to do sums
# sum = 0
# thousand.each{ |a| sum+=a }

# puts sum