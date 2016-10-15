#DONE
#Even Fibo


array_fibo = [1,2]

while array_fibo.last < 4000000
	array_fibo << array_fibo[-1] + array_fibo[-2]
end

#puts array_fibo

array_fibo.select!{|x| x%2 == 0}

sum = array_fibo.reduce :+

puts sum