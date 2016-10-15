#Circle Area and Circumference
#compute the area and the circumference of a circle with given radius r

puts "In order to calculate the area and the circumference of a circle,"
puts "Enter the radius of the circle: "

r = gets.to_i
A = 3.14159 * r**2
C = 2 * 3.14159 * r


puts "Area: #{A}"
puts "Circumference: #{C}"