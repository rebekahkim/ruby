# IN PROGRESS
# Cows and Bull Game


class Cowbull
	def initialize
		dic = File.read('2of4brif.txt').split

		@answer = dic.sample
		@split_answer = @answer.split(//)
		@answer_length = @split_answer.length
	end

	def guess(word)
		return true if word == @answer
		split_user_word = word.split(//)

		cow = 0
		common_letters = @split_answer & split_user_word
		cow = common_letters.length

		bull = 0
		@split_answer.each{ |letter|
			
		}

		return cow, bull		
	end

	def answer
		@answer
	end

	def split_answer
		@split_answer
	end

	def answer_length
		@answer_length
	end
end



cowbull = Cowbull.new

puts
puts
puts "============Cows and Bulls Game==============="
puts
puts "Cows = letters in the word, but not in the right place"
puts "Bulls = letters in the correct place in the word"
puts
puts
puts "I'm thinking of a(n) #{cowbull.answer_length} letter word."
puts "WORD = #{cowbull.answer}"
puts "SPLIT = #{cowbull.split_answer}"


loop do

	print "Your Guess: "
	user_input = gets.chomp


end






