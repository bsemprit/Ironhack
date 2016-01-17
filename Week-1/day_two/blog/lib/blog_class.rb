require 'colorize'

class Blog
	def initialize 
		@new_posts = []
		@currentpage = 1
		@post_per_page = 3
		@total_pages = 1
	end

	def add_post (post)
		@post = post
		@new_posts.push(@post)
	end

	def next_page
		if !last_page?
		@currentpage += 1
		end

		publish_front_page
	end

	def prev_page
		if @currentpage != 1
			@currentpage -=1
		end

		publish_front_page
	end

	def last_page
		(@new_posts.length/ 3.0).ceil
	end

	def last_page? #? Turns it into a boolean of true or false
		@currentpage == last_page
	end

	def pagination_section
		pagination = ""
		(1..last_page).each do |page|
			if page == @currentpage
			pagination += "#{page} ".red
			else
			pagination += "#{page} "
			end
		end

		puts pagination

	end
	

	def publish_front_page
		# wholepage = @new_posts.sort {|post_a, post_b| post_b.date <=> post_a.date}

		#[0..2]
		#[3..5]
		#[6..8]

		first_post = (@currentpage - 1)* @post_per_page
		last_post = (first_post + @post_per_page) -1
		current_posts = @new_posts[first_post..last_post]

		current_posts.each do |each_post|
			each_post.display
		end

		pagination_section
		
	end
end