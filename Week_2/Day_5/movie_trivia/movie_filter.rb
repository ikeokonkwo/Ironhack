

class Movie_list
	
	def initialize(movies)
		@movies = movies
	end

	def filter_movies
		movie_array = []
		@movies.each do |movie|
			if movie.poster != nil
				movie_array.push(movie)
			end

		end 
		movie_array[0..8]

	end 
end
