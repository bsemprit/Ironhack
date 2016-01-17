class Authenticator
	attr_accessor :correct_username, :correct_password
	def initialize
		@correct_username = "bianca"
		@correct_password = "s"
	end

	def valid_credentials?(username, password)
		if correct_username == username && correct_password == password
			return true
		else
			return false
		end
	end
end