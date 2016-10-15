#Find nth Fibonacci number

print "To find the nth Fibonacci number, enter n: "
n = gets.to_i

def fibo(n)	
	nth_fibo = 0
		if n == 1
				nth_fibo = 1
		elsif n == 2
				nth_fibo = 1
		else
				nth_fibo = fibo(n - 2) + fibo(n - 1)	#This is called recursion (when a function calls itself) - very advanced and mind-bending so wtg! ^JH
		end
	return nth_fibo
end

puts fibo(n)