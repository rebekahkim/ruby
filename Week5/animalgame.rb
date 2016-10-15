#Class5

class Grid
	def initialize
		@grid = []
		@grid = 10.times.map{ 10.times.map{ nil } }
		@current_x_position = [0, 0]
		
		player = Player.new
		@grid[@current_x_position[0]][@current_x_position[1]] = player

		@grid[2][5] = Cow.new
		@grid[1][6] = Shark.new
		@grid[9][0]  = Shark.new
		@grid[2][1] = Cow.new
		@grid[0][1]  = Lion.new
		@grid[1][8] = Fish.new
		@grid[6][5]  = Lion.new
		@grid[3][7] = Fish.new

	end

	def display		
		for row in @grid
			for value in row
				if value.is_a? Animal
					print value.abbr
				else
					print '-'
				end
			end
			print "\n"
		end

	end

	def move(user_command)
		player = @grid[@current_x_position[0]][@current_x_position[1]]
		@grid[@current_x_position[0]][@current_x_position[1]] = nil

		@current_x_position = [@current_x_position[0] + user_command[0], @current_x_position[1] + user_command[1]]
		@grid[@current_x_position[0]][@current_x_position[1]] = player 
	end
end






class Animal
	def initialize
		@abbr = "?"
	end

	def speak
		puts "I said something"
	end

	def abbr
		@abbr
	end
end



class Player < Animal
	def initialize
		@abbr = 'X'
	end
end

class Cow < Animal
	def initialize
		@abbr = 'C'
	end
end

class Shark < Animal
	def initialize
		@abbr = 'S'
	end
end

class Lion < Animal
	def initialize
		@abbr = 'L'
	end
end

class Fish < Animal
	def initialize
		@abbr = 'F'
	end
end







grid = Grid.new

direction = 0

puts '----------------The Animal Game----------------'
puts 'Move the X and eat the fish (F) and cows (C) and avoid being eaten by lions (L) and sharks (S)!'
puts
puts

until direction == 'exit'
	puts
	puts '=========='
	puts '##########'
	grid.display
	puts '##########'
	puts '=========='
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
			puts 'Try again'
			redo
	end
	
	grid.move(direction)
end




