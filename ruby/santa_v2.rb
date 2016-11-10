class Santa 

	attr_reader :age, :ethnicity
	attr_accessor :gender

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

	#SETTERS
	def celebrate_birthday
		@age = @age + 1 
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.insert(-1, reindeer_name)
		@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name))
		@reindeer_ranking
	end 

	# def gender=(new_gender) 
	# 	@gender = new_gender 
	# end

	#GETTERS
	# def age
	# 	@age 
	# end

	# def ethnicity
	# 	@ethnicity
	# end   

end 

 

# TEST CODE
# _______________________

# RELEASE 0
# Saint_Nick = Santa.new 

# Saint_Nick.speak
# Saint_Nick.eat_milk_and_cookies("chocolate chip")

# RELEASE 1
# diverse_santas = []

# genders = ["transgender", "agender", "female", "male", "female", "gender fluid", "N/A"]
# ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# genders.length.times do |item|
# 	diverse_santas << Santa.new(genders[item], ethnicities[item])
# end 

# p diverse_santas

# RELEASE 2 
# santa = Santa.new("transgender", "white")
# p santa 

# santa.celebrate_birthday
# santa.get_mad_at("Rudolph")
# santa.gender = "gender fluid"
# santa.age
# santa.ethnicity 

# p santa












