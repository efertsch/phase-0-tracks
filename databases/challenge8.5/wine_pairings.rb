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



