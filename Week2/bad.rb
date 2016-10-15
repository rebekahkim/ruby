#Baditude Bot Program

def add_baditude(word, hash)
	if hash.has_key?('word')
		hash(word)
	else
		word
	end
end


change_word = {'like' => 'hate', 'hate' => 'like', 'is' => 'is not', 'is not' => 'is', 'are' => 'are not', 'are not' => 'are', 'can' => 'cannot', 'cannot'=>'can'}

new_string = []

puts "~~~~~~~~~The Baditude Bot~~~~~~~~~~"
print "Enter string: "

user_string = gets

split_string = user_string.split
split_string.each{|term| print add_baditude(term, change_word)}

# puts "#{add_baditude( , )}"
# add_baditude("#{user_string}")