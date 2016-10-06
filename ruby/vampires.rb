puts "Welcome to Our New Employee Vampire Detection Program"

puts "What is your name?"
employee_name = gets.chomp

puts "What is your age?"
employee_age = gets.to_i


puts "What is your year of birth?"
employee_yob = gets.to_i
	present_year = 2016
	years_old = present_year - employee_yob
	if employee_age == years_old
		puts "Age and year of birth are consistent."
	else 
		puts "Discrepancy between age and year of birth detected."
	end


puts "Would you like us to order you some garlic bread from our cafeteria?"
employee_garlic_response = gets.chomp
until employee_garlic_response == "yes" || employee_garlic_response == "no"
	puts "Please answer yes or no to move on."
	employee_garlic_response = gets.chomp
end 

puts "Would you like to enroll in the company health insurance program?"
employee_health = gets.chomp
until employee_health == "yes" || employee_health == "no"
	puts "Please answer yes or no to move on."
	employee_health = gets.chomp
end 

