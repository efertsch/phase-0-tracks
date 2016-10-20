class Santa

	def initialize(input_gender, input_ethnicity)
		puts "Initializing Santa instance..."
		@gender = input_gender
		@ethnicity = input_ethnicity
		@reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end 

	attr_reader :ethnicity
	attr_accessor :age, :gender, :reindeer

	def speak(santa_greeting)
		puts santa_greeting
		santa_greeting
	end 

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
		cookie_type
	end 	


	def celebrate_birthday
		@age = age + 1
	end

	def get_mad_at(reindeer_name)
		n = @reindeer.find_index(reindeer_name)
		@reindeer.insert(8, @reindeer.delete_at(n))
	end

	def gender=(new_gender)
		@gender = new_gender
	end 

end 

potential_genders = ["transgender", "cisgender", "agender", "gender queer", "prefer not to say"]
potential_ethnicities = ["white", "black", "hispanic", "asain", "prefer not to say"]
  

#make into outside method?
santa_array = []
100.times do |each| 
    santa_array << Santa.new(potential_genders.sample, potential_ethnicities.sample)
end

santa_array.celebrate = rand(1..140)
p santa.age

p santa_array

# santa =  Santa.new 
# santa.speak("Ho, ho, ho! Haaaaapy holidays!")
# santa.eat_milk_and_cookies("chocolate chip")

# santas = []

# potential_genders = ["transgender", "cisgender", "agender", "gender queer", "prefer not to say"]
# potential_ethnicities = ["white", "black", "hispanic", "asain", "prefer not to say"]
  
# potential_genders.length.times do |i|
# 	santas << Santa.new(potential_genders[i], potential_ethnicities[i])
# end 

# p santas


# santas = Santa.new("cisgender", "black")
# p santas

# santas.celebrate_birthday

# santas.get_mad_at("Rudolph")

# santas.gender = "agender"

# p santas

# p santas.age
# p santas.ethnicity

# santas = []

# potential_genders = ["transgender", "cisgender", "agender", "gender queer", "prefer not to say"]
# potential_ethnicities = ["white", "black", "hispanic", "asain", "prefer not to say"]
  
# potential_genders.length.times do |i|
# 	santas << Santa.new(potential_genders[i], potential_ethnicities[i])
# end 

# p santas
