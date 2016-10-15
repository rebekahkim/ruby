# IN PROGRESS
#Smallest Multiple

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'prime'
prime_to_twenty = Prime.take_while{|p| p <= 20}
	# Prime.take(6)
	# Prime.prime?(4023848763243)

product = prime_to_twenty.reduce :*


to_twenty = (4..20).to_a

nonprime = to_twenty - prime_to_twenty
print nonprime

i = 0
until product % (1..20)
	product * nonprime[i]
	i += 1 
end

