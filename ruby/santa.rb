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
 
santas = []

100.times do |santa| 
    santas << Santa.new(potential_genders.sample, potential_ethnicities.sample)
    santas[santa].age = rand(0..140)
end

p santas







