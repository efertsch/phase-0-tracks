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
 
santa =  Santa.new
santa.speak("Ho, ho, ho! Haaaaapy holidays!")
santa.eat_milk_and_cookies("chocolate chip")


