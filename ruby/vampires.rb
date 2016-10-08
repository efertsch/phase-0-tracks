puts "Welcome to Our New Employee Vampire Detection Program"

puts

#Form for number of employees to be processed
puts "How many employees will be processed at this time?"
number_of_employees = gets.to_i

#Initialize loop

until number_of_employees == 0

#Employee name input, employee name flagged if 'Drake Cula' or 'Tu Fang'

puts "What is your name?"
employee_name = gets.chomp

if employee_name == "DrakeCula" || employee_name == "TuFang" #Cannot get this to work
	employee_name = false 
else
	employee_name = true 
end 
p employee_name 
	
	
		
#Employee age input
puts "What is your age?"
employee_age = gets.to_i

#Employee year of birth input, checks to see if age and year of birth match	
puts "What is your year of birth?"
employee_yob = gets.to_i
	present_year = 2016
	years_old = present_year - employee_yob
	if employee_age == years_old
		employee_age = true 
		p employee_age
		puts
		puts "Internal Use Only: Age and year of birth are consistent."
	else 
		puts
		puts "Internal Use Only: Discrepancy between age and year of birth detected."
		employee_age = false
		p employee_age
	end
	puts

#Employee garlic bread input
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

#Employee health insurance input 
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

#Employee allergy input, checks for and flags sunshine 	
# puts "Please list any and all allergies you may have, type 'done' when you have finished."
# employee_allergies = gets.chomp
# until employee_allergies == "done" || employee_allergies == "sunshine"
# 	puts "please enter another allergy."	
# 	employee_allergies = gets.chomp 
# end 
# 	if employee_allergies == "sunshine"
# 		employee_allergies = false
# 	else
# 		employee_allergies = true
# 	end 
# p employee_allergies

puts
puts "Results of Test:"
puts


if (employee_age && employee_garlic_response) || (employee_age && employee_health)  
	puts "Probably not a vampire"
elsif ( !employee_age && employee_garlic_response)
	puts "Probably a vampire"
elsif ( !employee_age && employee_health)
	puts "Probably a vampire"
elsif !employee_age && !employee_garlic_response && !employee_health
	puts "Almost certainly a vampire"
elsif employee_name == false 
	puts "Definitely a vampire"
else 
	puts "Result inconclusive"
end 


	
#Conditional statements comparing results and returning output based on if employee age is valid
# if employee_age == true then
# 	if (employee_garlic_response == true  || employee_health == false) 
# 		puts "Probably not a vampire."
# 	elsif (employee_garlic_response == false || employee_health  == true)
# 		puts "Probably not a vampire."
# 	elsif employee_name == false 
# 		puts "Definitely a vampire." 
# 	elsif employee_allergies == false  
# 		puts "Definitely a vampire"
# 	else 
# 		puts "Result inconclusive."
# 	end 
# end 	

# #Conditional statements comparing results and returning output based on if employee age is not valid
# 	if employee_age == false then 
# 		if (employee_garlic_response == true || employee_health == false) 
# 		puts "Probably a vampire."
# 		elsif (employee_garlic_response == false || employee_health == true) 
# 		puts "Probably a vampire."
# 		elsif (employee_garlic_response == false || employee_health == false) 
# 		puts "Almost certainly a vampire." 
# 		elsif employee_name == false 
# 		puts "Definitely a vampire." 
# 		elsif employee_allergies == false 
# 		puts "Definitely a vampire"
# 	else 
# 		puts "Result inconclusive."
# 	end 
# end

puts 
#Increments number of employee for use in until loop
number_of_employees -= 1

puts "There are #{number_of_employees} employees left to be processed."



end 
puts

#Release 5: Adds final message to program.
puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."







#Still to Fix:
# Issues with names 
# 'No' repeating itself 
# Almost certainly a vampire response. 













