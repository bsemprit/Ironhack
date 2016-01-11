
class Home
	attr_reader(:name, :city, :price, :capacity)
	def initialize (name, city, price, capacity)
		@name = name
		@city = city
		@price = price
		@capacity = capacity
	end
end

#Iteration 0: Create an array of homes with at least 10 different ones. 
#Make sure to have a mix of values for name, city, price and capacity.
homes = [
	Home.new("Bianca's Home", "Miami", 50, 2),
	Home.new("Mitchelle's Home", "Barcelona", 20, 5),
	Home.new("Mark's Home", "Eden", 34, 3),
	Home.new("Alia's Home", "Davie", 65, 6),
	Home.new("Jamal's Home", "Paris", 44, 1),
	Home.new("Jenkins's Home", "Hialeah", 22, 6),
	Home.new("Andres's Home", "Miami", 87, 1),
	Home.new("Anna's Home", "Coral Gables", 22, 3),
	Home.new("Jake's Home", "Coral Gables", 34, 1),
	Home.new("Kevin's Home", "Davie", 76, 2)
]
#Iteration 1: When you run your Textbnb program, use the each from the exercise above to display the homes.
homes.each do |hm|
  puts hm.name
end

# Iteration 2: Sorting

# Use sort to order the homes by their price. Lowest to highest should be the default. 
# Instead of having your program end its execution after showing the homes, have it wait for user input. 
# Give the user the option to sort by price but with highest first. Also give the user the option to sort by capacity. 
# Use different calls to the sort method to do all of these.

puts "How do you want to sort the homes?"
puts "Enter 1) Price by low to high \n2) Price by high to low\n3) Capacity by high to low\n4)Capacity by low to high: "
input = gets.chomp.to_i
if input == 1 
	sorted_homes = homes.sort {|x, y| x.price <=> y.price}
	sorted_homes.each do |hm|
  		puts hm.name
	end

elsif input == 2 
	sorted_homes = homes.sort {|x, y| y.price <=> x.price}
	sorted_homes.each do |hm|
  		puts hm.name
	end
	
elsif input == 3 
	sorted_homes = homes.sort {|x, y| x.capacity <=> y.capacity}
	sorted_homes.each do |hm|
  		puts hm.name
	end
	
else 
	puts "You must enter the right number, please try again."
end

