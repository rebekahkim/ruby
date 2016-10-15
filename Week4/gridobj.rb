#New grid game using objects

class Grid
	def initialize
		@grid = []
		@grid = 10.times.map{ 10.times.map{ 0 } }
		@current_x_position = [0, 0]
		@grid[@current_x_position[0]][@current_x_position[1]] = 'X'
	end

	def display
		@grid = 10.times.map{ 10.times.map{ 0 } }
		@grid[@current_x_position[0]][@current_x_position[1]] = 'X'
		@grid.each{|row| puts row.join}		
	end		

	def move(user_command)
		@current_x_position = [@current_x_position[0] + user_command[0], @current_x_position[1] + user_command[1]]
	end

end
1


grid = Grid.new


direction = 0

until direction == 'exit'
	puts
	puts "=========="
	grid.display
	puts "=========="
	puts

	print 'In order to move the X, 
	enter u for up d for down, r for right, and l for right. 
	Enter exit to exit the program: '
	direction = gets.chomp
	
	case direction
		when 'r'
			direction = [0, 1]
		when 'l'
			direction = [0, -1]
		when 'd'
			direction = [1, 0]
		when 'u'
			direction = [-1, 0]
		else 
			puts "Try again"
			redo
	end
	
	grid.move(direction)
end