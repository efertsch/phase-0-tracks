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

require 'sqlite3'
require 'faker'

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

def add_guest(db, first_name, last_name)
	db.execute("INSERT INTO guests (first_name, last_name) VALUES (?, ?)", [first_name, last_name])
end 

def add_wine(db, type, name, desc, pair_id)
	db.execute("INSERT INTO wines (type, name, description, entree_id) VALUES (?, ?, ?, ?)", [type, name, desc, pair_id])
end 

def add_entree(db, main, side, pair_id)
	db.execute("INSERT INTO entrees (main, side, wine_id) VALUES (?, ?, ?)", [main, side, pair_id])
end 

def print_wines(db)
	wines = db.execute("SELECT * FROM wines")
	puts "Here is the wine menu:"
	wines.each do |wine|
		puts "The #{wine['name']}, is a #{wine['type']} #{wine['description']} wine.}"
	end 	
end 

def print_entrees(db)
	entrees = db.execute("SELECT * FROM entrees")
	puts "Tonights entree options include:"
	entrees.each do |entree|
		puts "#{entree['main']}, served a side of #{entree['side']}."
	end 	
end 


#DRIVER CODE 

# Adds guests based on number entered
# puts "How many guests will be attending?"
# number_of_guests = gets.to_i

# number_of_guests.times do 
# 	add_guest(db, Faker::Name.first_name, Faker::Name.last_name)
# end 

#-----------------------------------------------------------------


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

# Print wine menu
# print_wines(db)

#Print entree menu
print_entrees(db)
