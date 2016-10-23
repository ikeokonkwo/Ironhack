class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]
  puts array_of_languages.first.name
  new_array = []
  puts ""
 new_array = array_of_languages.drop(3)
  puts ""
  # puts array_of_languages
  puts new_array

   #print array_of_languages

#   def array_printer(array)
#   array.each do | language |
#     puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
#   end

# end

# array_printer(array_of_languages)
# # puts "The programming languages aged one year are: "

# # aged_languages = []
# # aged_languages = array_of_languages.map do |x|
# # 		ProgrammingLanguage.new(x.name, x.age + 1, x.type)
# # 		# x.age + 1
# # 	 	# print x.age

# # end

# # array_printer(aged_languages)
# # numerical_array = [] ??????????

# # array_of_languages.sort! {|a,b|
# # a.age <=> b.age 
# # }

# first_array = []
# first_array = array_of_languages.first 
# # {|x|
# # 	x.age 
# # }

# puts ""
# puts " NEW ARRAY IS:" 
# array_printer(first_array)









