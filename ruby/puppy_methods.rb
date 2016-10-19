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

class Rocks

  def initialize     
    puts "We come to rock country..."
  end

  def climb
    puts "SUPER smooth! Really pretty!"
  end

  def crumble
    p "Just like a day at the beach."
  end

  def form
    puts "Mountains made from dead crabs."
  end

  def melt
    puts "Volcanic indigestion."
  end

  
end



spot = Puppy.new

spot.fetch("ball")

spot.speak(5)

spot.roll_over

spot.age_converter(10)

spot.give_kiss(14)


rock_array = []
50.times do |each| 
    rock_instance = Rocks.new
    rock_array << rock_instance
end

p rock_array

rock_hash.each do |rock|
    rock.form
    rock.climb
    rock.crumble
    rock.melt
end


