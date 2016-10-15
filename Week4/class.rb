#Class 4

class Horse
	def initialize(my_name, my_voice)
		@name = my_name
		@voice = my_voice
		@number_of_legs = 4
		@speed = rand(10..30)
		@number_of_ears = 2
	end

	def neigh
		puts "#{@name}, a horse with #{@number_of_legs} legs and #{@number_of_ears} ears, 
		neighs in a #{@voice} voice and runs in #{@speed}mph"
	end

	def lose_leg
		@number_of_legs -= 1
	end

	def name
		@name
	end

	def num_legs=(n)								#'=' syntax difference
		if n <= 4									#Deters others from changing number of legs higher than 4
			@number_of_legs = n
		end
	end

	def num_ears(n)
		if n <= 2
			@number_of_ears = n
		end
	end

	def speed
		@speed
	end
end


horse_one = Horse.new("Adam", "low")
bob = Horse.new("Bob", "medium")
chloe = Horse.new("Chloe", "high")
dorothea = Horse.new("Dorothea", "high")

horse_one.neigh
horse_one.lose_leg
horse_one.neigh
bob.neigh

puts horse_one.name

horse_one.neigh
horse_one.num_legs = 5
horse_one.num_ears(1)
horse_one.neigh
horse_one.lose_leg
horse_one.neigh




horse_data = File.read "horses.txt"

puts horse_data.split





