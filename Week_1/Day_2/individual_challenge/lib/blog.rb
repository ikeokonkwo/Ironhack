#Creating Blog Class
class Blog
	attr_accessor :post_array
	def initialize 
		@post_array = []
	end 

#Add Post Method 
def add_post_method(post)
	@post_array.push(post)
end



#Advanced Blog
	def  publish_front_page  
			current_page_value = 1
			if current_page_value == 1 
				@post_array[0..2].each do |post|
					if post.class == Post 
						puts "title:#{post.title}  date:#{post.date} "
						puts "*********"
						puts post.text
						puts "--------------------------"
					
					elsif post.class == Sponsor_Post 
						puts "**********#{post.title}********"
						puts "*******************************"
						puts post.text
						puts "-------------------------------"	
					else 
					end
										end 
			end
				puts "Pages: 1 2 3 "
				puts "type 'next' for the next page"
				d = gets.chomp 
				while d != "exit"


#THIS IS THE PART WHERE IT GETS WEIRD...RATHER THAN SHOWING THE NEXT 3 POSTS IT JUST SHOWS 1 
			if d == "next" 
			current_page_value += 1
				if current_page_value == 2 
					@post_array[3..5].each do |post|
					if post.class == Post 
						puts "title:#{post.title}  date:#{post.date}         "
						puts "*********"
						puts post.text
						puts "--------------------------"
						
					elsif post.class == Sponsor_Post 
						puts "**********#{post.title}********"
						puts "*******************************"
						puts post.text
						puts "-------------------------------"
					else
					end
				puts "Pages: 1 2 3 "
				puts "type 'next' for the next page or 'previous' to go back"
				c = gets.chomp 
											end
				end	
			end


			if c == "next" then
					current_page_value += 1
					if current_page_value == 3  
						@post_array[6..8].each do |post|
						if post.class == Post 
							puts "title:#{post.title}  date:#{post.date}         "
							puts "*********"
							puts post.text
							puts "--------------------------"
							
						else post.class == Sponsor_Post 
							puts "**********#{post.title}********"
							puts "*******************************"
							puts post.text
							puts "-------------------------------"
						end 
												end
						end 
								puts "Pages: 1 2 3 "
								puts "type 'previous' to go back"
								b = gets.chomp 
							
				


			elsif c == "previous" 
					current_page_value -= 1
					if current_page_value == 1  
						@post_array[3..5].each do |post|
						if post.class == Post 
						puts "title:#{post.title}  date:#{post.date} "
						puts "*********"
						puts post.text
						puts "--------------------------"
					
					elsif post.class == Sponsor_Post 
						puts "**********#{post.title}********"
						puts "*******************************"
						puts post.text
						puts "-------------------------------"	

						end
												end
					 				
					else
					end
					end
			end 
				puts "Pages: 1 2 3 "
				puts "type 'next' for the next page"
				gets.chomp 
	end 
end
 
			

	
		






