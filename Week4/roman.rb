#Roman numeral converter

# class String
#   def numeric?
#     Float(self) != nil rescue false
#   end
# end

arabic = { 1 => "I",
	  4 => "IV",
	  5 => "V",
	  9 => "IX",
	  10 => "X",
	  40 => "XL",
	  50 => "L",
	  90 => "XC",
	  100 => "C",
	  400 => "CD",
	  500 => "D",
	  900 => "CM",
	  1000 => "M" 
}

roman = arabic.invert

print "Enter roman numeral or arabic number to convert it: "
number = gets




# if number.is_a? Integer
# 	puts "integer"
# else
# 	puts "string"
# end
