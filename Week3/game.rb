# DONE: SEE gridobj.rb
#Moving X in grid

# 6) Write a program that 
#   a) draws a 10x10 grid of Os on the screen with a X in the upper left corner
#   b) lets the user type “up”, ‘down’, ‘left’, or ‘right’ (or u, d, l, r)
#   c) moves the X in the correct direction (unless that’s impossible)
#   d) redraws the grid
#   e) repeats b) through d) until the user types ‘end’
  # All computer games ultimately have some sort of grid that the characters/enemies/items occupy - this is a very simple form of that.  
  # multi-dimensional array and a draw_board(multi_array_here) function will be essential.

# def draw_board(multi_array_here)


# grid = [[0,0],[0,0]]
# puts grid

# a = [2,3,5,6,1,6,2,34,6,1,23]
# print a.map!{|x| x == 2? 0 : x}

# x = 0
# y = 0

# grid = Array.new(10) {Array.new(10,0)}
# grid[x][y] = 'X'
# print grid



grid = []

# 10.times{
# 	row = []
# 	10.times{row << 0}
# 	grid << row
# }

grid = 10.times.map{ 10.times.map{ 0 } }

grid.each{|row| puts row.join}


# print numbers.select{|x| x > 6}

# print numbers.map{|x| x + 10 > 6} 

# ('a'..'g').cover?('f')