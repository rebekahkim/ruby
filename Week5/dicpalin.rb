# dictionary palindromes
# more than 3 letters, from shortest to longest


dictionary = File.read('2of4brif.txt').split

palindrome_list = []


i = 0
until i == dictionary.length
	word = dictionary[i]
	if word == word.reverse
		palindrome_list << word
	end
	i += 1
end

puts palindrome_list