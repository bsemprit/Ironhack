# #                0        1         2          3            4
shoe_brands = ["Nike", "Reebok", "Puma", "Steve Madden", "Uggs"]

# shoe_brands.each_with_index do |brand, i|
# 	#first is the item and the second is the index of the item (0,1,2...)
# 	puts "This brand is my No. #{i + 1} favorite #{brand}."
# end



# favorite = shoe_brands.find do |brand|
# 	result = brand.length == 6
# 	puts brand + " --> #{result}"
# 	#returns something, cant use return statement, but must return something
# 	#stops when it finds the first result, must return a true or false value
# 	result
# end

# puts "My real favorite brand is: #{favorite}"

# upper_brands = []

# shoe_brands.each do |brand|
# 	upper = brand.upcase

# 	upper_brands.push (upper)
# end

# upper_brands = shoe_brands.map do |brands|
# #upper case the array
# 	brands.upcase
# end

# upper_brands = shoe_brands.map do |brands|
# 	#shorten the array parts into 2 letters of the string from 0 to 1
# 	brands[0..1]
# end

# puts upper_brands

# puts "                           "

# puts shoe_brands

# #Average brand name length
# total_length = 0
# shoe_brands.each do |brand|
# 	total_length += brand.length
# end

#the zero starts total_length at zero, it updates the value itself
total_length = shoe_brands.reduce(0) do |total_length, brand|
	total_length + brand.length
end

#Round 1
#accumulator = 0, brand = "Nike", return 0 + 4 -> 4

#Round 2
#accumulator = 4, brand ="Reebok", return 4 + 6 -> 10

#Round 3
#accumulator = 10, brand ="Puma", return 10 + 4 -> 14

#Round 4
#accumulator = 16, brand ="Steve Madden", return 16 + 12 -> 26

#Round 5
#accumulator = 26, brand ="Uggs", return 26 + 4 -> 30

#to.f turns Fixnum into a float
puts total_length.to_f / shoe_brands.length