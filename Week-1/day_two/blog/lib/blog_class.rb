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

	def publish_front_page
		wholepage = @new_posts.sort {|post_a, post_b| post_b.date <=> post_a.date}

			first_post = (@currentpage - 1)* @post_per_page
			last_post = first_post + 3

		wholepage[first_post...last_post].each do |each_post|
			each_post.display
		end

				#display pages
				total_posts = wholepage.length
				
				if total_posts > 3
					@total_pages = ((total_posts - 1) / @post_per_page) + 1

				else
					@total_pages = 1
				end
	
			puts "\n\n\n<prev #{(1..@total_pages).to_a} >next"

		puts ">next? Type next"
		user_input = ""

		while user_input != "exit" do

		user_input = gets.chomp

		if user_input == "next"
			@currentpage+=1
			first_post = (@currentpage - 1)* @post_per_page
			last_post = first_post + 3

			wholepage[first_post...last_post].each do |each_post|
				each_post.display
			end

				#display pages
				total_posts = wholepage.length
				
				if total_posts > 3
					@total_pages = ((total_posts - 1) / @post_per_page) + 1

				else
					@total_pages = 1
				end
	
			puts "\n\n\n<prev #{(1..@total_pages).to_a} >next"
			puts "Type next, exit or prev"
				user_input = gets.chomp
			# elsif user_input =="next" && @currentpage == @total_pages
			# 	user_input = "exit"
					
		
		elsif user_input == "prev"
			@currentpage-=1
			first_post = (@currentpage - 1)* @post_per_page
			last_post = first_post + 3

			wholepage[first_post...last_post].each do |each_post|
				each_post.display
			end
				#display pages
				total_posts = wholepage.length
				
				if total_posts > 3
					@total_pages = ((total_posts - 1) / @post_per_page) + 1

				else
					@total_pages = 1
				end
	
			puts "\n\n\n<prev #{(1..@total_pages).to_a} >next"
			puts "Type next, exit or prev"
				user_input = gets.chomp
		# elsif user_input =="prev" && @currentpage == 1
		# 		user_input = "exit"
		 end
		
	end
	end
end