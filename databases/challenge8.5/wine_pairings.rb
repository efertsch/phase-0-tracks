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

db = SQLite3::Database.new("party_pairings.db")
db.results_as_hash = true 


create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS guests(
		id INTEGER PRIMARY KEY, 
		first_name VARCHAR(255), 
		last_name VARCHAR(255)
	)
SQL

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS entrees(
		id INTEGER PRIMARY KEY, 
		main VARCHAR(255), 
		side VARCHAR(255),
		entree_id INT, 
		FOREIGN KEY (entree_id) REFERENCES wines(id)
	)
SQL

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS wines(
		id INTEGER PRIMARY KEY, 
		type VARCHAR(255), 
		name VARCHAR(255),
		description VARCHAR (255),
		wine_id INT, 
		FOREIGN KEY (wine_id) REFERENCES entrees(id)
	)
SQL

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS final_menu(
		guest_id INT,
		wine_id INT,
		entree_id INT,
		FOREIGN KEY (guest_id) REFERENCES guests(id),
		FOREIGN KEY (wine_id) REFERENCES wines(id),
		FOREIGN KEY (entree_id) REFERENCES entree(id)
	)
SQL

db.execute(create_table_cmd)
