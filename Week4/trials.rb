#Week 4 trials

places = { "a1"=>'X',"a2"=>'X',"a3"=>'X',
	  		"b1"=>' ',"b2"=>' ',"b3"=>' ',
			"c1"=>' ',"c2"=>' ',"c3"=>' '
		}

possible_victory = [
			['a1','a2','a3'],
			['b1','b2','b3'],
			['c1','c2','c3'],
			['a1','b1','c1'],
			['a2','b2','c2'],
			['a3','b3','c3'],
			['a1','b2','c3'],
			['c1','b2','a3']
		]

puts places[1].values

	# i = 0
	# if places[] == 'X'
	# #if places[possible_victory[i]] == 'X'
	# 	puts "Win"
	# else 
	# 	puts "no"
	# end
