

for i in 1..100 do
	if i%3==0 && i%5==0
		puts "FizzBuzz"
	elsif i%3 == 0
		puts "Fizz"
	elsif i%5 == 0
		puts "Buzz"
	
	else
		puts i
	end
end

puts " "
puts " "
b = 1
while b < 100
	if b%3==0 && b%5==0
		puts "FizzBuzz"
	elsif b%3 == 0
		puts "Fizz"
	elsif b%5 == 0
		puts "Buzz"
	else
		puts b
	end
	b = b + 1
end

puts " "
puts " "


1.upto(100) do |i|
	if i.to_s.length <2 && i == 1
		puts "Bang"
	elsif i ==10
		puts "BuzzBang"
	elsif i.to_s.chars.first(1).join.to_i ==1
		puts "Bang"
	elsif i%3==0 && i%5==0
		puts "FizzBuzz"
	elsif i%3==0
		puts "Fizz"
	elsif i%5==0
		puts "Buzz"
	else
		puts i
	end	
end

1.upto(100) do |num|
	result = ""
	if num %3 == 0
		result << "Fizz"
	end
	if num %5==0
		result << "Buzz"
	end
	if result == "" 
		puts num
	else
		puts result
	end
end