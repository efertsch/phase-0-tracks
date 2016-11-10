class Santa 

	attr_reader :ethnicity
	attr_accessor :gender, :age

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

	def celebrate_birthday
		@age = @age + 1 
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.insert(-1, reindeer_name)
		@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name))
		@reindeer_ranking
	end

end 

 

# TEST CODE
# _______________________

# RELEASE 0
saint_nick = Santa.new 

saint_nick.speak
saint_nick.eat_milk_and_cookies("chocolate chip")

# RELEASE 1
diverse_santas = []

genders = ["transgender", "agender", "female", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

genders.length.times do |item|
	diverse_santas << Santa.new(genders[item], ethnicities[item])
end 

p diverse_santas

# RELEASE 2 & 3
santa = Santa.new("transgender", "white")
p santa 

santa.celebrate_birthday
santa.get_mad_at("Rudolph")
santa.gender = "gender fluid"
santa.age
santa.ethnicity 

p santa

# RELEASE 4

genders = ["transgender", "agender", "female", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do |santa|
	santa = Santa.new(genders.sample, ethnicities.sample)
	santa.age = rand(1..140)
	p santa 
end 

 



















