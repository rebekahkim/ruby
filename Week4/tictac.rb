#Tic-tac-toe

class Tictactoe
	def initialize
		@places = { "a1"=>' ',"a2"=>' ',"a3"=>' ',
	  		"b1"=>' ',"b2"=>' ',"b3"=>' ',
			"c1"=>' ',"c2"=>' ',"c3"=>' '
		}
		@possible_victory = [
			['a1','a2','a3'],
			['b1','b2','b3'],
			['c1','c2','c3'],
			['a1','b1','c1'],
			['a2','b2','c2'],
			['a3','b3','c3'],
			['a1','b2','c3'],
			['c1','b2','a3']
		]
	end

	def display
		puts 
		puts "   a b c"
		puts 
		puts " 1 #{@places["a1"]}|#{@places["b1"]}|#{@places["c1"]}"
		puts "   -----"
		puts " 2 #{@places["a2"]}|#{@places["b2"]}|#{@places["c2"]}"
		puts "   -----"
		puts " 3 #{@places["a3"]}|#{@places["b3"]}|#{@places["c3"]}"
		puts
	end

	def player_1_mark(address)
		if @places[address] == ' '
			@places[address] = 'X'
		else
			puts "Invalid address: try again"
		end
	end
			
	def player_2_mark(address)
		if @places[address] == ' '
			@places[address] = 'O'
		else
			puts "Invalid address: try again"
		end
	end

	def win?
		game_over = false
		victory = ['X', 'X', 'X']
		i = 0
		@places.each{|key| }
		if @places.values == victory
			game_over = true
		end
	end

	def draw?
		draw = true
		if @places.has_value?(' ')
			draw = false
		end
	end		

end


board = Tictactoe.new


puts "========Tic-tac-toe Program========"
puts "Player 1 has X and Player 2 has O"
puts "In order to put X or O, you must enter a valid grid address like a1 or c3"
puts "Entering an invalid grid address, like c4 or d1, or non-empty slot will not be reflected"
puts board.display

result = 0
until board.win? or board.draw?
	
	print "Player 1, please enter a grid address: "
	player_1_address = gets.chomp
	board.player_1_mark(player_1_address)
	board.display
	

	print "Player 2, please enter a grid address: "
	player_2_address = gets.chomp
	board.player_2_mark(player_2_address)
	board.display


end






