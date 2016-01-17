def say_hello (name)
	puts "Hello, #{name}!"
end

say_hello("Rafa")
say_hello("Xavi")
#say_hello("Isra", "Fernando") #shouldn't work, too many arguments!

say_hello("James" + " Bond")

def add(a, b)
	puts a + b
end

add((5*5), (5+3)) #equals 33

# add (((3 + 4) * 10), 8 - 4 / 2) doesn't work

def taste(food)
	if food =="bacon"
		puts "Yummy!!! BACON!!!"
	elsif food == "spinach"
		puts "Urgh..."
	else 
		puts "Can i have some bacon on the side?"
	end
end

taste "spinach"
taste "bacon"

def square(number)
	puts number * number
end

square(4) #it returns 16

def multiply(a,b)
	puts a*b
end

multiply(4,2) #it will return 8

def square(number)
	puts number *number
end

puts(square(4)) #also prints a blank line

def add(a,b)
	return a+a
	return a + b
	return b+b
end

puts add(1, 3) #prints only 2 because return only returns first return value

def add(a,b)
	calc1 = a + a
	calc2 = a + b
	calc3 = b + b
	return calc1, calc2, calc3	
end

puts add(2, 4) #prints [4,6,8]

def square(num)
  sqr_num = num * num
  if sqr_num > 100
    return “Number too big!!” #use return to stop execution
  end
  sqr_num #this happens only if the if statement isn't true.
end