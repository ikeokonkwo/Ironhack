require_relative("lib/authenticator.rb")
require_relative("lib/word_counter.rb")

puts "Please Login"

login_attempt = Password.new 
login_attempt.compare_password

marc = Wordcounter.new
marc.count_words