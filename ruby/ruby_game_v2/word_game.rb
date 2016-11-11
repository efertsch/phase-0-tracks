class Game

	attr_reader :game_over, :number_of_guesses, :dashes

	def initialize(word)
		puts "Initializing a new game..."
		@dashes = [] << "_" * word.length
		@game_over = false 
		@number_of_guesses = word.length
	end

	def game_over
		@game_over = true 
	end 


end 



# DRIVER CODE 

hangman = Game.new("code")
p hangman.dashes
p hangman.game_over
p hangman.number_of_guesses












# PSEUDOCODE 

# Define a word game class
# Add attributes that:
# 	- describe game status - reader
# 	- number of guesses - reader
# 	- dashes for word entered
# Add methods that:
# 	- build dashes arrays for words entered
# 	- determine whether or not game is over
# 	- searches an entered word for a guessed letter
# 		- if the letter is present, replace the word at the index of the dash it exists at in the 		entered word 
# 	- prints feedback  
# Add driver code that includes:
# 	- Tests method functionality
# 	- User Interface for word and character entry 
# 	- prints a message type based on whether the game is won or lost
