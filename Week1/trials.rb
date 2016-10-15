#Trial and Error page

=begin
puts "What is your name?"
name = gets.chomp
puts "Hello, "  + name +  " How are you?"
puts "" + name + ", You stink!"

x = "blah blah---"
y = "sldkfjlksjdf"

puts x + y
=end

=begin
puts "Enter number"
x = gets

if x > 2
   puts "x is greater than 2"

elsif x <= 2 and x!=0
   puts "x is 1"
   
else
   puts "I can't guess the number"
end

print "Enter grade"
grade = gets.chomp

case grade


when "A"
	print "Great"
when "B"
	print "Meh"
when "C"
	print "blah"
else
	puts "try again"
end

class Vehicle
  attr_accessor :number_of_wheels
 
  def initialize(number_of_wheels)
    @number_of_wheels = number_of_wheels
  end
 
  def ===(another_vehicle)
    self.number_of_wheels == another_vehicle.number_of_wheels
  end
end
 
four_wheeler = Vehicle.new 4
two_wheeler = Vehicle.new 2
 
print "Enter number of wheel for vehicle: "
vehicle = Vehicle.new gets.chomp.to_i
 
puts case vehicle
when two_wheeler
  'Vehicle has the same number of wheels as a two-wheeler!'
when four_wheeler
  'Vehicle has the same number of wheels as a four-wheeler!'
else
  "Don't know of a vehicle with that wheel arrangement!"
end
end


i = 1
puts(loop do
	i += 1
	next if i == 4
	print "#{i} "
	break "Hello" if i == 11
end)

puts "\n"

i = 2
until i > 50
	i *= i
	print "#{i} "
	redo if i < 4000000
end


print "Enter number: "
i = gets.to_i

#for i in 1..i
	loop do
		i *= i
		print "#{i} "	
		break "End" if i > 100 
end
print "\n"


print "Enter 2 numbers: "
i = gets.to_i
j = gets.to_i

for i in i..j
	print "#{i} "
end

[1,2,3,4,5,6,7,8,9,10].each {|value| print "#{value} "}
[1,2,3,4,].each {|value| print "#{value} "}


[1, 22..3, 11, 10].each {|v| print "#{v} "}
#10.times {|i| print "#{i} "} 
print "\n"
9.times {|n| print "#{n*n} "}
print "\n"


1.upto(11) {|i| print "#{i+1} "}
print "\n"
1.step(10, 3) { |i| print "#{i} "}
puts "\n"

beginning = Time.now
# code block
puts "Time elapsed #{Time.now - beginning} seconds"
=end

puts "Enter number: "
print "Enter number: "
print "Enter number: "
print "Enter number: "
print "Enter number: "
print "Enter number: "


=begin
n = gets.to_i
p = 3

a = Array.new(n) {|p| print "#{p} "}

print "\n"
=begin
array = [11,12,13,14,15,16]
array.each_index {|i| print "#{array[i]} "}


print "Enter number: "
i = gets.to_i

for 2..i
	loop do
		if i == 1
=end










