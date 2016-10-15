#DONE
#Largest Palindrome Product
# Find the largest palindrome made from the product of two 3-digit numbers.



def check_palin(n)
	split_n = n.to_s.scan(/./).map!{|e| e.to_i }

	return true if split_n == split_n.reverse
	false
end

palin = []


three_digit_number_1 = 999
three_digit_number_2 = 999

while three_digit_number_1 > 99
	while three_digit_number_2 > 99
		product = three_digit_number_2 * three_digit_number_1
		
		if check_palin(product)
			palin << product
		end
		
		three_digit_number_2 -= 1
		redo if three_digit_number_2 != 99 
	end
	three_digit_number_1 -= 1
	three_digit_number_2 = 999
end

puts palin.sort.last