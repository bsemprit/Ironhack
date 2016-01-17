class ProgrammingLanguage
 attr_accessor :name, :age, :type
 def initialize(name, age, type)
   @name = name
   @age = age
   @type = type
 end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
 python = ProgrammingLanguage.new("Python", 24, "Dynamic")
 javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
 go = ProgrammingLanguage.new("Go", 6, "Static")
 rust = ProgrammingLanguage.new("Rust", 5, "Static")
 swift = ProgrammingLanguage.new("Swift", 2, "Static")
 java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]
# EACH

def array_printer(array)
 array.each do | language |
   puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
 end
end
array_printer(array_of_languages)
puts "Each =================================="
#MAP
aged_languages = array_of_languages.map do |languages|
   languages = 
   ProgrammingLanguage.new(languages.name, languages.age + 1, languages.type)
   languages
end
puts "The programming languages aged one year are: "
array_printer(aged_languages)
puts "Map =================================="
#SORT
sorted_languages = array_of_languages.sort {|x, y| y.age <=> x.age }


puts " -------------------------- "
   puts "The programming languages aged one year are: "
array_printer(sorted_languages)
puts "Sort =================================="
#DELETE
# new_array=array_of_languages
# new_array.delete_at(-1)
# array_printer(new_array)
# puts "Check original array #{array_of_languages.inspect}"
# puts "Delete at =================================="
new_array2=array_of_languages
new_array2.delete_if{|language| language.name == "java"}
array_printer(new_array2)
puts " Delete if =================================="
#Shuffle
nuevo_array=array_of_languages.shuffle

array_printer(nuevo_array)
puts "shuffle =================================="
#Bonus Research
# array_of_languages.map! { | language | 
#    language.name += "!!!"
#    language}

# array_printer(array_of_languages)
# puts " Bonus  -------------------------- "

reverse_array = array_of_languages
reverse_array.reverse 

array_printer(reverse_array)
puts "Reverse =================================="