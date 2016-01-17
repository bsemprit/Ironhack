class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]
# #Prints the name of the homes
# puts homes[0].name
# puts homes[1].name
# puts homes[2].name
# puts homes[3].name
# puts homes[4].name

# #Prints the name using a loop with do and end
# homes.each do |hm|
#   puts hm.name
# end

# #Prints the name using a loop in a block that replaces do and end with {}
# homes.each { |hm|
#   puts hm.name
# }

#Code should look like this
# Nizar's place in San Juan
# Price: $42 a night

# Fernando's place in Seville
# Price: $47 a night

# Josh's place in Pittsburgh
# Price: $41 a night

# Gonzalo's place in Málaga
# Price: $45 a night

# Ariel's place in San Juan
# Price: $49 a night

# #The each method is used to display the above format
# homes.each {|home|
# puts "#{home.name} in #{home.city}"
# puts "$#{home.price} a night"
# }

# #Creates an array of cities from the original home array
# cities = homes.map do |hm|
#   hm.city
# end

# puts cities

# # Good return
# cities = homes.map do |hm|
#   # Return each home's city
#   hm.city
# end

# # Bad return
# bad = homes.map do |hm|
#   # puts returns nil because of the puts
#   puts hm.name
# end

#Map the array of homes into an array of their prices. 
#Use that array of prices to get the average price of homes. 
#What collection method should you use for the average?
# prices = homes.map {
# 	|home|
# 	home.price
# }

# avg = 0.0

# prices.each do |money|
# 	avg +=money
# end

# puts avg / prices.length

# #This finds the average capacity but uses the reduce function
# # Remember the assigment!
# # The return value of the block from the last iteration will be returned.
# # ||||||||||||||
# # vvvvvvvvvvvvvv
# total_capacities = homes.reduce(0.0) do |sum, hm|
#   sum + hm.capacity
# end

# puts "The average capacity is:"
# puts total_capacities / homes.length

#Use reduce to calculate the avgerage instead of each

# price_avg = homes.reduce(0.0) do |avg, home|
# 	avg + home.price
# end
# puts "The average price is:"
# puts price_avg / homes.length

# # this each also uses the index (number in the array) with each parameter
# homes.each_with_index do |hm, index|
#   puts "Home Number #{index + 1}: #{hm.name}"
# end

# #select only the homes that are in San Juan:

# # Homes in San Juan
# san_juan_homes = homes.select do |hm|
#   # Keep hm only if its city is "San Juan"
#   hm.city == "San Juan"
# end

# #we are filtering out only homes with low capacity, so keeping only high capacity homes

# # Homes with capacity 4 or more
# high_capacity_homes = homes.select do |hm|
#   # Keep hm only if its capacity is 4 or greater
#   hm.capacity >= 4
# end

#we are retrieving a single home by a specific price:

# home_41_dollars = homes.find do |hm|
#   # Is hm's price $41?
#   hm.price == 41
# end

# puts "The first home that costs $41 is:"
# puts home_41_dollars.name

# #sort by capacity:

# sorted = homes.sort do |home1, home2|
#   # Compare the two homes by their capacity
#   home1.capacity <=> home2.capacity
# end
# puts "This is the list of homes:"
# sorted.each do |homes|
	
# 	puts "Name: #{homes.name}"
# 	puts "Price: #{homes.price}"
# end

# #This is a range of numbers and how to use each and map with it

# rng = 1..42

# rng.each do |number|
#   puts "The next number in the range is: #{number}"
# end

# double = rng.map do |number|
#   number * 2
# end

# puts double

hellos = {
  :english => "Hello",
  :spanish => "Hola",
  :french => "Bonjour"
}
#The block receives two values to iterate through: the key (language) and the item (word).
hellos.each do |language, word|
  puts "The word for Hello in #{language} is: #{word}."
end