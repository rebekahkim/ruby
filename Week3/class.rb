#Week 3 class

grid = [['a','b','c'], ['d','e','f'], ['g', 'h', 'i']]
grid[0][1]

a = [0, 2, 5, 'a', 'r', 4]
numbers = Array(1..10)

print numbers.select{|x| x > 6}

print numbers.map{|x| x + 10 > 6} 

('a'..'g').cover?('f')