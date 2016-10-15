# IN PROGRESS
# Blackjack Database

require 'mysql2'

mysql = Mysql2::Client.new(host: '127.0.0.1', username: 'root', database: 'blackjack')

command = nil
until command == 'e'
	puts "Would you like to (c)reate a new game, (l)list all games, (s)earch for a game, or (e)xit?"
	command = gets.strip
	case command
	when 'c'
		puts "Please enter a name for your game"
		game_name = gets.strip
		safe_name = mysql.escape(game_name)

		mysql.query "INSERT INTO games (name) VALUES ('#{safe_name}')"
		puts "Game created!"
	when 'l'
		puts 'Listing all games, most recent first'
		games = mysql.query "SELECT * FROM games ORDER BY id DESC"

		games.each do |game|
		  puts "#{game['id']}:  #{game['name']}"
		end
	when 's'
		puts "Type the name of a particular game you'd like to see:"
		game_name = gets.strip 	#OOPS I'M NOT ESCAPING THIS - BAD NEWS

		result = mysql.query "SELECT * FROM games WHERE name = '#{game_name}'"

		if result.count > 0
			game = result.first 
			puts "We found that game! Here's it's info:"
			puts "#{game['id']}:  #{game['name']}"
		else
			puts "Oops we couldn't find a game with that name!"
		end
	when 'e'
		abort "Thanks for playing!"
	else
		puts "Invalid command!"
	end
end