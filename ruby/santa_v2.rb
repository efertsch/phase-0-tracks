class Santa 

	def initialize
		puts "Initalizing Santa instance..."
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










