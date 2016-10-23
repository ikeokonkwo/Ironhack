require ("imdb")

the_search = Imdb::Search.new("Star Wars")

#return array of movie options
the_search.movies 

first_result = the_search.movies[0]

puts "Got a total of #{the_search.movies.length} results" 

puts
puts 