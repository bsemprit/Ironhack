class Blog
	def initialize 
		@new_posts = []
		@currentpage = 1
		@post_per_page = 3
	end

	def add_post (post)
		@post = post
		@new_posts.push(@post)
	end

	def publish_front_page
		wholepage = @new_posts.sort {|post_a, post_b| post_b.date <=> post_a.date}

		#which page are you on
		total_posts = wholepage.length
		if total_posts > 3
			@currentpage = ((total_posts - 1) / @post_per_page) + 1

		else
			@currentpage = 1
		end

	
			first_post = (@currentpage - 1)* @post_per_page
			last_post = first_post + 3

		wholepage[first_post...last_post].each do |each_post|
			each_post.display
		end

		puts "\n\n\n#{first_post+1}, #{first_post +2}, #{last_post} "
	end
end