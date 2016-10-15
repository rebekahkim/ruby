#big = Array.new

#big = ["asaf", "bsadfsa", "csdfsd"]
#big.collect! {|c| c + "%%%"}

#print big.combination(2).to_a

# print "Enter number: "
# i = gets.to_i

#n = [1,2,3,4,5,6,7,8,9,0,0,0,[2,3]]

# dice1 = Array(1..6)
# dice2 = Array(1..6)

# prob = dice1 * dice2

# puts prob.length

#f = n.count(i)

#puts "#{f}/36"

# puts n.index(1) #tells you the address of the requested element

# dice1 = [1, 2, 3, 4, 5, 6]

# big = dice1.permutation(2).to_a
# big << dice1.permutation(2).to_a

# a = [1, 2, 3, 4, 5]
# b = [11, 22, 33, 44]
# a.map! { |x| x == 5 ? b : x }.flatten!

# puts a

# a = ['This is some sample text',
#      'This is some sample text',
#      'This is some sample text']

# a.each do |s|
#     s.gsub!('This is some sample text', 'replacement')
# end

# puts a



# a = [1,2,3]

# b = [2,3,4]

# c = a.zip(b).map {|a,b| a+b}

# puts c

# arr = ('a'..'z').to_a

# print arr
# print arr.rotate(2)


def f(fruit)
   fruit
end

arr = ["apples", "bananas", "coconuts", "watermelons"]

h = Hash[arr.collect { |v| [v, f(v)] }]

print h






















