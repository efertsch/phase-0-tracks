puts "Welcome to Our New Employee Vampire Detection Program"
puts
number_of_employeees = 0
puts "How many employees will be processed at this time?"
employee_number = gets.to_i
while employee_number > 0

	puts "What is your name?"
	employee_name = gets.chomp
		if employee_name == "Drake Cula" || employee_name == "Tu Fang"
			employee_name = false
			# puts "Definitely a vampire."
		else employee_name = true
			p employee_name
		end 
	
	puts "What is your age?"
	employee_age = gets.to_i
	
	puts "What is your year of birth?"
	employee_yob = gets.to_i
		present_year = 2016
		years_old = present_year - employee_yob
		if employee_age == years_old
			employee_age = true 
			p employee_age
			puts "Age and year of birth are consistent."
		else 
			puts "Discrepancy between age and year of birth detected."
			employee_age = false
			p employee_age
		end
	
	
	puts "Would you like us to order you some garlic bread from our cafeteria?"
	employee_garlic_response = gets.chomp
	until employee_garlic_response == "yes" || employee_garlic_response == "no"
		puts "Please answer yes or no to move on."
		employee_garlic_response = gets.chomp
	end
		if employee_garlic_response == "yes"
			employee_garlic_response = true
			p employee_garlic_response
		else
			employee_garlic_response = false
			p employee_garlic_response
		end
	
	
	puts "Would you like to enroll in the company health insurance program?"
	employee_health = gets.chomp
	until employee_health == "yes" || employee_health == "no"
		puts "Please answer yes or no to complete the survey."
		employee_health = gets.chomp
	end 
		if employee_health == "yes"
			employee_health = true
			p employee_health
		else
			employee_health = false
			p employee_health
		end
	
	puts
	
	# puts employee_name
	# puts employee_age
	# puts employee_garlic_response
	# puts employee_health
	
	puts "Results of Test:"
	puts
	
	if employee_age == true && (employee_garlic_response || employee_health)
		puts "Probably not a vampire."
	
	elsif employee_age == false && (employee_garlic_response || employee_health)
		puts "Probably a vampire."
	
	elsif employee_age == false && (employee_garlic_response && employee_health)
		puts "Almost certainly a vampire."
	
	elsif employee_name == false 
			puts "Definitely a vampire."
	else 
		puts "Result inconclusive."
	end
employee_number -= 1
end 
puts 





# case employee_age || employee_name
# 	when employee_age == true && (employee_garlic_response || employee_health)
# 		puts "Probably not a vampire."
# 	when employee_age  == false && employee_garlic_response || employee_health
# 		puts "Probably a vampire."
# 	when employee_age == false && employee_garlic_response && employee_health 
# 		puts "Almost certainly a vampire."
# 	when employee_name == false && (employee_garlic_response && employee_health)
# 		puts "Definitely a vampire."
# 	else 
# 	puts "Result inconclusive."
# end 

# if employee_name == false
# 		puts "Definitely a vampire."
# else 
# 	puts "Result inconclusive."
# end 


