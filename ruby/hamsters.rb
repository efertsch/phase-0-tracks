puts "What is your hamster's name?"
hamster_name = gets.chomp 
# puts hamster_name

puts "From 1 - 10 (10 being the loudest) What do you consider the volume level of your hamster?"
hamster_volume = gets.to_i
	 until hamster_volume >= 1 && hamster_volume <= 10
    puts "Please enter a integer from 1 to 10"
    hamster_volume = gets.to_i
  end
# puts hamster_volume
	
	
puts "What is your hamster's fur color?"
hamster_color = gets.chomp.downcase
	if hamster_color == "black"
		puts "#{hamster_name} is black"
	elsif hamster_color == "brown"
		puts "#{hamster_name} is brown"
	elsif hamster_color == "white"
		puts "#{hamster_name} is white"
	else
		puts "#{hamster_name} is a not a standard color"
	end 

puts "Is your hamster a good candidate for adoption?"
hamster_adoption = gets.chomp.downcase
	until hamster_adoption == "yes" || hamster_adoption == "no"
    puts "Please answer yes or no only"
    hamster_adoption = gets.chomp.downcase
  end
	if hamster_adoption == "yes"
		puts "Great, he'll find a home in no time!"
	elsif hamster_adoption == "no"
		puts "Oh, that's too bad!"
	else
		puts "Please answer yes or no only"
	end 

puts "How old is your hamster?"
hamster_age = gets.to_f
until hamster_age >= 0.5 && hamster_age <= 50.0
    puts "Please enter a valid age in number format"
    hamster_age = gets.to_f
  end
  if hamster_age == ""
    hamster_age = nil
  # else 
  # 	puts hamster_age
  end 

  puts #Extra Space 

  puts hamster_name
  puts hamster_volume
  puts hamster_color
  puts hamster_adoption
  puts hamster_age 