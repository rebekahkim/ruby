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

	def valid_mark?(address)
		valid = true
		if @places[address] =! ' '
			valid = false
			puts "Invalid address: try again"
		end
		valid
	end

	def player_1_mark(address)
		#if @places[address] == ' '
			@places[address] = 'X'
		# else
		# 	puts "Invalid address: try again"	
		# end
	end

	def player_2_mark(address)
		@places[address] = 'O'
	end

	def win?
		@possible_victory.each{|scenario|				#select or map and count
			num_x = 0
			scenario.each{|location|
				if @places[location] == 'X'
					num_x += 1
				end
			}
			if num_x == 3
				return true
			end
		}
		false
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
	
	print "Player 1, please enter a grid address; "
	player_1_address = gets.chomp
	until board.valid_mark?(player_1_address) == true
		board.player_1_mark(player_1_address)
	end
	board.display
	
	# if check_result_1
	# 	puts "Game over: player 1 wins!"
	# end
	print "Player 2, please enter a grid address; "
	player_2_address = gets.chomp
	board.player_2_mark(player_2_address)
	if board.valid_mark?(player_2_address) == true
		board.player_2_mark(player_2_address)
	end
	board.display


end






