module EntriesHelper
	def display_entry(entry)
		"Entry: Hours- #{entry.hours} | Minutes- #{entry.minutes}"
	end

	def flash_message
		# if flash[:notice]
		# 	flash_content(:notice)
		# elsif flash[:alert]
		# 	flash_content(:alert)
		# end
		flash_content(:alert) || flash_content(:notice)
	end

	private
	def flash_content(type)
		if flash[type]
		content_tag :div, class: type do
				content_tag :p do 
					flash[type]
				end
			end
		end
	end
end
