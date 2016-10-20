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

	def age
		@age
	end 

	def ethnicity
		@ethnicity
	end 


end 




santa =  Santa.new 
santa.speak("Ho, ho, ho! Haaaaapy holidays!")
santa.eat_milk_and_cookies("chocolate chip")

santas = []

potential_genders = ["transgender", "cisgender", "agender", "gender queer", "prefer not to say"]
potential_ethnicities = ["white", "black", "hispanic", "asain", "prefer not to say"]
  
potential_genders.length.times do |i|
	santas << Santa.new(potential_genders[i], potential_ethnicities[i])
end 


p santas

santas = Santa.new("cisgender", "black")
p santas

p santas.celebrate_birthday
p santas 

santas.get_mad_at("Rudolph")
p santas

santas.gender = "agender"
p santas

p santas.age
p santas.ethnicity

