class User
	attr_accessor :correct_username, :correct_password
	def initialize
		@correct_username = "bianca"
		@correct_password = "swordfish"

		
	end


	
	def askuser
		username = ""

		while username !=@correct_username
			puts "Enter the user name: "
			username = gets.chomp
			if username != @correct_username
				puts "That is the wrong username."
			end
		end

		userpassword = ""
				while userpassword !=@correct_password

					puts "Enter the password"
					userpassword = gets.chomp

					if userpassword != @correct_password
						puts "That is the wrong userpassword."
					end
				end

	end


end