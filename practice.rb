name = “mr. Bond”
capitalized_name = name.capitalize
puts "Hello #{capitalized_name}"

flavours = "chocolate, mint, strawberry, vanilla, caramel, chili"
flavours_array = flavours.split(", ")

"How many characters are in this string?".length

"awesome".include? "you" #returns false
"awesome".include? "me" #returns true
phrase = "Just kidding, you’re awesome too"
phrase.include? "aw" #returns true

age = 28
age.odd? #returns false
age.even? #returns true

3.times { puts “beetlejuice” } #returns beetlejuice 3 times

age = 28
age.round(-1) # returns 30
age.round(1) # returns 28.0

animals = ["Lions", "Tigers", "Bears"]
puts animals
numbers = ["One", 2, "Three"]
puts numbers[0] #will put "One"
puts numbers[1] #will put 2

my_array = []
my_array << "A"
my_array.push "B"
my_array.push "C"

puts my_array

my_array.delete_at 2
puts my_array

arraysort = [4,6,2,4,7,12,9,12].sort
arraysort1 = ["g", "e", "n", "w", "a"].sort

puts arraysort
puts arraysort1


array1 = ["chocolate", "mint", "strawberry", "vanilla", "caramel", "chilli"].join
#"chocolatemintstrawberryvanillacaramelchilli"
puts array1

array2 = ["chocolate", "mint", "strawberry", "vanilla", "caramel", "chilli"].join(", ")
#"chocolate, mint, strawberry, vanilla, caramel, chilli"

puts array2

my_hash = {}
my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"

puts my_hash["AST"]
puts my_hash["GAL"]

puts my_hash

puts my_hash.has_key?("AST")
puts my_hash.has_key?("CAT")
puts my_hash.has_value?("Galicia")

puts my_hash.select {|key, value| key.include?("G")}

puts "what is this?".class
puts 3.class
puts [1,2,3].class

puts "What is your favorite animal?"
animal = gets.chomp
if animal == "Dog"
	puts "You like dogs. Woof!"
elsif animal == "Cat"
	puts "You like cats. Meow!"
end #end only at the end of all the conditions!!

numbers = [1,2,3]
for element in numbers
	puts "-> #{element}"
end

string = ""
#While the string's length is less than 10

while string.length < 10
	#add an 'a'
	string = string + 'a'
end

puts "The final string is #{string}"

numbers = ["One", 2, "Three"]
numbers.each do |item|
	puts "-->#{item}"
end

my_hash = {}
my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"
my_hash["CAT"] = "Catalunya"

my_hash.each do |key,value|
	puts "#{key} stands for #{value}"
end