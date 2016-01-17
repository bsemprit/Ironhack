require_relative("lib/user.rb")
require_relative("lib/auth.rb")
require_relative("lib/word_count.rb")

puts "Username :"

username = gets.chomp

puts "Password:"
password = gets.chomp

auth = Authenticator.new 

if auth.valid_credentials?(username, password)
	puts "-----------"

	puts "Welcome back, #{username}!"

	puts "Please enter some text to count the words:"
	text = gets.chomp

	counter = WordCounter.new(text)

	puts = "--------------"
	puts "You entered: #{counter.word_count} word(s)."
else
	puts "Wrong! Leave!"
end

# user = User.new
# user.askuser


