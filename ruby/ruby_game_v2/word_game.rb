class Game

	attr_reader :is_over, :dashes
	attr_accessor :word, :number_of_guesses, :previous_guesses 

	def initialize(word)
		@word = word
		@dashes = "_" * word.length
		@is_over = false 
		@number_of_guesses = 0
		@previous_guesses = []
	end

	def add_guesses(letter_guess)
		@previous_guesses << letter_guess
	end 

	def game_over
		if @number_of_guesses == @word.length 
		@is_over = true 
			if @dashes == @word 
				puts "Congratulations you won the game!"
			else
				puts "You lose! Better luck next time sucker!"
			end 
		end
		@is_over 
	end

	def insert_letter(letter)
		word_array = @word.split('')
		if word_array.include?(letter)
			letter_index = @word.index(letter)
			dashes_array = @dashes.split('')
			dashes_array.delete_at(letter_index)
			dashes_array.insert(letter_index, letter)
			@dashes = dashes_array.join('')
			@dashes
		end 
	end 

end 




puts "Welcome to The Word Guessing Game:"
puts "Would you like to play?"
user_input = gets.chomp.downcase

if user_input == 'yes'

	puts "Player 1, please enter a word:"
	@word = gets.chomp.downcase
	
	new_game = Game.new(@word)
	
	puts "The word that Player 1 chose is #{@word.length} letters long."
	puts new_game.dashes
	
	
	until new_game.is_over == true 
	
		puts "Player 2 please enter a letter to guess:"
		letter_guess = gets.chomp.downcase
	
		if new_game.insert_letter(letter_guess) 
			puts "Correct! The letter '#{letter_guess}' is in the word!\n"
			new_game.add_guesses(letter_guess)
			puts new_game.dashes
			new_game.number_of_guesses += 1

		elsif new_game.previous_guesses.include?(letter_guess)  
			puts "You already guessed that letter!" 

		else 
			puts "Sorry, the letter #{letter_guess} is not in the word.\n"
			new_game.add_guesses(letter_guess)
			puts new_game.dashes
			new_game.number_of_guesses += 1
		end 
		new_game.game_over
	end

elsif user_input == 'no'
	puts "Bummer, come back and play soon!"
else 
	puts "I didn't understand your answer, please try again!"
end  



# QUESTIONS
# ----------
	# Handling duplicate letters? Can only get 1 instance of a letter in a word to populate (i.e tree)




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
