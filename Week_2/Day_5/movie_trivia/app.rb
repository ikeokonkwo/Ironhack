require "bundler/setup"
require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require_relative("movie_filter.rb")

get "/home" do 
	erb(:home)
end 

get "/search_results" do
  the_search = Imdb::Search.new(params[:keyword])
  movies = the_search.movies

  movielist = Movie_list.new(movies[0..14]) 
   @movies = movielist.filter_movies
  
  #CODE GOES HERE
  # YOU WANT 9 movies with a poster
  erb :search_results
end

