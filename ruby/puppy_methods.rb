class Puppy

  def initialize
  	puts "Initializing new puppy instance..."
  end 

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
  	number.times {|x| puts "Woof"}
  end

  def roll_over
  	puts "*rolls over*"
  end 

  def age_converter(human_years)
  	dog_years = (human_years * 7)
  	puts dog_years
  end

  def give_kiss(number)
  	puts "Give me #{number} kisses!"
  	number.times {|x| puts "The pup gave me a kiss!"}
	end 

end


# DRIVER CODE 


spot = Puppy.new

spot.fetch("ball")

spot.speak(5)

spot.roll_over

spot.age_converter(10)

spot.give_kiss(14)

