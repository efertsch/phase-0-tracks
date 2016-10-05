puts "What is your hamster's name?"
hamster_name = gets.chomp 
puts "From 1 - 10 (10 being the loudest) What do you consider the volume level of your hamster?"
hamster_volume = gets.chomp
puts "What is your hamster's fur color?"
hamster_color = gets.chomp
puts "Is your hamster a good candidate for adoption?"
hamseter_adoption = gets.chomp

puts "How old is your hamster?"
hamster_age = gets.chomp
  if hamster_age == ""
    hamster_age = nil
  #else 
    #puts hamster_age
  end