class Game

	attr_reader :game_over, :number_of_guesses, :dashes
	attr_accessor :word

	def initialize(word)
		puts "Initializing a new game..."
		@word = word
		@dashes = "_" * word.length
		@game_over = false 
		@number_of_guesses = 0
	end

	def game_over
		if @number_of_guesses > @word.length
			@game_over = true 
		end 
	end

	def find_char(letter) 
		word_array = @word.split('')
		word_array.each do |char|
			if char == letter
				letter_index = @word.index(letter)
				dashes_array = @dashes.split('')
				dashes_array.delete_at(letter_index)
				dashes_array.insert(letter_index, letter)
				@dashes = dashes_array.join('')
			end 
		end
		@dashes 
	end 


end 



# DRIVER CODE 

hangman = Game.new("code")
# p hangman.dashes
# p hangman.game_over
# p hangman.number_of_guesses
# p hangman.game_over 

p hangman.find_char("d")









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
