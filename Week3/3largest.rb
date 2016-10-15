# DONE
#largest prime factor

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def is_prime?(n)
	return false if n <= 1
	2.upto(Math.sqrt(n).to_i) do |x|
	return false if n%x == 0
	end
	true
end

# primes = [2]
# t = 3

# until t == 600851475143
# 	if is_prime(t)
# 		primes << t
# 	end
# 	t += 2
# end

# puts primes.last

factors = []
n = 600851475143
product_sum = 1
x = 3

while product_sum < n
	if n % x == 0 and is_prime?(x) 
		factors << x
		product_sum *= x
	end
	x += 2
end

print factors

# until t == 7
# 	if 600851475143 %t == 0
# 		factors << t
# 	end
# 	t -= 2
# end

# print factors

# until primes.last > 600851475143
# 	if is_prime(t) == true
# 		primes << t
# 	end
# 	t += 2
# end

# require 'prime'
# primes = []
# primes << Prime.take(600851475143)
# _while {|p| 60083 %p}


# factors = []
# n = 29

# until factors.last == 600851475143
# 	if 600851475143 % t == 0
# 		factors << t
# 		t += 2
# 	end
# end

# print factors

