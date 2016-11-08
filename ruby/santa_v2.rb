class Santa 

	def initialize(gender, ethnicity)
		puts "Initalizing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end 
	
	def speak
		puts "Ho, ho, ho! Haaaaaapy holidays!"
	end 
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

end 

# TEST CODE 


Saint_Nick = Santa.new 

Saint_Nick.speak
Saint_Nick.eat_milk_and_cookies("chocolate chip")










