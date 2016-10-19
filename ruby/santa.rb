class Santa

	def initialize(input_gender, input_ethnicity)
		puts "Initializing Santa instance..."
		@gender = input_gender
		@ethnicity = input_ethnicity
		@reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end 

	def speak(santa_greeting)
		puts santa_greeting
		santa_greeting
	end 

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
		cookie_type
	end 	

end 


#TEST CODE
santas = []

potential_genders = ["transgender", "cisgender", "agender", "gender queer", "prefer not to say"]
potential_ethnicities = ["white", "black", "hispanic", "asain", "prefer not to say"]
  
potential_genders.each do |i|
	santas << Santa.new(potential_genders, potential_ethnicities)
end 

puts santas
