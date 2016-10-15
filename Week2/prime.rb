# Find the Xth prime number

def is_prime(n)
	is_valid_prime = true
	test = 2
	until n == test
		
		if n %test == 0
			is_valid_prime = false
		end

		test += 1
	end
	is_valid_prime 
end


puts "To find the Xth prime number, enter X: "
x = gets.to_i

primes = []
t = 3

if x == 1
	puts "2"
end


until primes.length == x - 1
	if is_prime(t) == true
		primes << t
	end
	t += 2
end

puts primes.last
puts "\n"


#puts primes.sort