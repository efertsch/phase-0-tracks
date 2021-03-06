
require 'sqlite3'


db = SQLite3::Database.new("party_pairings.db")
db.results_as_hash = true 


create_guests_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS guests(
		id INTEGER PRIMARY KEY, 
		first_name VARCHAR(255), 
		last_name VARCHAR(255)
	)
SQL

create_entrees_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS entrees(
		id INTEGER PRIMARY KEY, 
		main VARCHAR(255), 
		side VARCHAR(255),
		wine_id INT, 
		FOREIGN KEY (wine_id) REFERENCES wines(id)
	)
SQL

create_wines_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS wines(
		id INTEGER PRIMARY KEY, 
		type VARCHAR(255), 
		name VARCHAR(255),
		description VARCHAR (255),
		entree_id INT, 
		FOREIGN KEY (entree_id) REFERENCES entrees(id)
	)
SQL

create_final_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS final_menu(
		guest_id INT,
		wine_id INT,
		entree_id INT,
		FOREIGN KEY (guest_id) REFERENCES guests(id),
		FOREIGN KEY (wine_id) REFERENCES wines(id),
		FOREIGN KEY (entree_id) REFERENCES entree(id)
	)
SQL

db.execute(create_guests_cmd)
db.execute(create_entrees_cmd)
db.execute(create_wines_cmd)
db.execute(create_final_cmd)

def add_guest(db, first_name, last_name)
	db.execute("INSERT INTO guests (first_name, last_name) VALUES (?, ?)", [first_name, last_name])
end 

def add_wine(db, type, name, desc, pair_id)
	db.execute("INSERT INTO wines (type, name, description, entree_id) VALUES (?, ?, ?, ?)", [type, name, desc, pair_id])
end 

def add_entree(db, main, side, pair_id)
	db.execute("INSERT INTO entrees (main, side, wine_id) VALUES (?, ?, ?)", [main, side, pair_id])
end 

def add_final_info(db, guest_id, wine_id, meal_id)
	db.execute("INSERT INTO final_menu (guest_id, wine_id, entree_id) VALUES (?, ?, ?)", [guest_id, wine_id, meal_id])
end 

def find_guest_id(db, name)
	guest_id = db.execute("SELECT id FROM guests WHERE last_name = '#{name}'")
	guest_id[0][0]
end 

def find_wine_id(db, meal_id)
	suggested_wine = db.execute("SELECT id FROM wines WHERE entree_id = '#{meal_id}'")
	suggested_wine[0][0]
end 

def retrieve_wine_name(db, id)
	wine_name = db.execute("SELECT name FROM wines WHERE id = '#{id}'")
	wine_name[0][0]
end 

def retrieve_entree_name(db, id)
	entree_name = db.execute("SELECT main FROM entrees WHERE id = '#{id}'")
	entree_name[0][0]
end 


def program_intro
	puts "Welcome to the dinner party planner program!\n"
	puts "This program is designed to plan a dinner party based on:\n"
	puts "The number of guests, and their desired food and beverage pairings.\n"
	puts "To begin, please enter the number of guests that will be attending.\n\n"
end 
 

def print_entrees(db)
	entrees = db.execute("SELECT * FROM entrees")
	entrees.each do |entree|
		puts "#{entree['id']}.#{entree['main'].capitalize}, served a side of #{entree['side']}."
	end 	
end 




#DRIVER CODE 

# Adds Wines 
# add_wine(db, "red", "cabernet sauvignon", "big-structured, dark-fruited", 2)
# add_wine(db, "white", "pinot grigio", "crisp, light, steely", 3)
# add_wine(db, "white", "reisling", "crisp, aromatic, nobel", 4 )
# add_wine(db, "red", "merlot", "round, soft, dark-fruited", 1)

#------------------------------------------------------------------

# Adds Entrees
# add_entree(db, "braised lamb shanks", "garlic broccolini", 4)
# add_entree(db, "roasted root vegetables", "hand-tossed kale salad", 1)
# add_entree(db, "grilled halibut", "sauteed summer squash", 2)
# add_entree(db, "blackened chicken", "sweet potato mash", 3)

#--------------------------------------------------------------------


puts "For use by The Host Only:\n\n"

program_intro

puts "How many guests will be attending?"
number_of_guests = gets.to_i

puts "Please provide your guests with the device in order to complete the program."

number_of_guests.times do

	puts "Please enter your first name."
	first_name = gets.chomp.downcase
	puts "Please enter your last name."
	last_name = gets.chomp.downcase
	add_guest(db, first_name, last_name)

	puts "Hello, #{first_name.capitalize}, below is a list of tonight's entree options:\n\n"

	print_entrees(db)

	puts "Please enter the number associated with your meal choice and we will pair it with the most appropriate wine!" 
	meal_choice = gets.to_i
	add_final_info(db, find_guest_id(db, last_name), find_wine_id(db,meal_choice), meal_choice)

	suggested_wine = retrieve_wine_name(db, find_wine_id(db,meal_choice))
	entree_choice = retrieve_entree_name(db, meal_choice)

	puts "Thanks for taking the survey, #{first_name.capitalize}!"
	puts "Based on your entree choice of #{entree_choice}, we recommend the #{suggested_wine} - we look forward to serving you!"

end 

puts "Here's a print out of your final results:"
registry = db.execute("SELECT * FROM final_menu")
registry.each do |item|
	puts "Guest number #{item['guest_id']} will be enjoying the entree with an ID of: #{item['entree_id']} paired with the wine with an ID of: #{item['wine_id']}"
end 




# CONSIDERATIONS AND FUTURE WORK
	# Users can update items 
	# Pretty print of final registry table
	# Make code more DRY - use of more data structures to populate tables
	# Users want to try multiple types of wine 
	# Use more integrated table systems to extract meaningful data (complex joins)
	# Separate different events - limit the number of guests allowed 




# PSEUDOCODE 
	# Require sqlite3 gem 
	# Create SQLite3 database and store in a variable for accessibility 
	# Determine data structure to store data in 
	# Create tables:
		# Guests 
		# Wines 
		# Entrees 
	# Method to generate table size based upon number of guests?
	# Methods to add values to tables 
	# Method to update column information 
	# Method to print guests, menus, etc.,
	# Method to generate pairing based upon entree entry
	# Method to generate pariing based upon wine entry (id)

