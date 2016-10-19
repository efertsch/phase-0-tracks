class Santa

	def speak(santa_greeting)
		puts santa_greeting
		santa_greeting
	end 

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
		cookie_type
	end 	

	def initialize
		puts "Initializing Santa instance..."
	end 	

end 


#TEST CODE
 
santa =  Santa.new 
santa.speak("Ho, ho, ho! Haaaaapy holidays!")
santa.eat_milk_and_cookies("chocolate chip")


