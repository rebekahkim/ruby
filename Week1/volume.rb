#Calculate Volume

puts "Find the volume of solids!\n For\n Sphere, enter 2 \n Cone, enter 3 \n Cube, enter 4 \n Cylinder, enter 5"

s = gets.to_f

pi = 3.14159

if s == 2
	puts "Enter radius: "	
	rs = gets.to_i
	vs = 4 * pi/ 3 * rs**3
	puts "Volume: #{vs}"

elsif s == 3
	puts "Enter radius: "
	rco = gets.to_i
	puts "Enter height: "
	hco = gets.to_i
	vco = pi * hco /3 * rco**2
	puts "Volume: #{vco}"

elsif s == 4
	puts "Enter length: "
	l = gets.to_i
	vcu = l ** 3
	puts "Volume: #{vcu}"

elsif s == 5
	puts "Enter radius: "
	rcy = gets.to_i
	puts "Enter height: "
	hcy = gets.to_i
	vcy = hcy * pi * rcy ** 2

else
	puts "Try again, dummy!"
	end