
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

def array_printer(array_of_homes)
	array_of_homes.each do |hm|
  		puts "#{hm.name} in #{hm.city}"
  		puts "$#{hm.price} with a capacity of #{hm.capacity}"
	end
end

# Iteration 2: Sorting

# Use sort to order the homes by their price. Lowest to highest should be the default. 
# Instead of having your program end its execution after showing the homes, have it wait for user input. 
# Give the user the option to sort by price but with highest first. Also give the user the option to sort by capacity. 
# Use different calls to the sort method to do all of these.

puts "How do you want to sort the homes?"
puts "Enter \n1) Price by low to high \n2) Price by high to low\n3) Capacity by high to low\n4)Capacity by low to high: \n"
user_input = gets.chomp.to_i
if user_input == 1 
	lowest_to_highest = homes.sort {|home_a, home_b| home_a.price <=> home_b.price}
	array_printer(lowest_to_highest)

elsif user_input == 2 
	highest_to_lowest = homes.sort {|home_a, home_b| home_b.price <=> home_a.price}
	array_printer(highest_to_lowest)
	
elsif user_input == 3 
	cap_lowest_to_highest = homes.sort {|home_a, home_b| home_a.capacity <=> home_b.capacity}
	array_printer(cap_lowest_to_highest)
elsif user_input == 4 
	cap_highest_to_lowest = homes.sort {|home_a, home_b| home_b.capacity <=> home_a.capacity}
	array_printer(cap_highest_to_lowest)
	
else 
	puts "You must enter the right number, please try again."
end

