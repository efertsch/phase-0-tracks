class Game

	attr_reader :is_over, :dashes
	attr_accessor :word, :number_of_guesses 

	def initialize(word)
		@word = word
		@dashes = "_" * word.length
		@is_over = false 
		@number_of_guesses = 0
	end

	def game_over
		if @number_of_guesses == @word.length
			@is_over = true 
		end 
	end

	def find_char(letter) 
		word_array = @word.split('')
		word_array.each do |char|
			if char == letter 
				true 
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


# USER INTERFACE


puts "Welcome to The Word Guessing Game:"

puts "Player 1, please enter a word:"
@word = gets.chomp.downcase

new_game = Game.new(@word)

puts "The word that Player 1 chose is #{@word.length} letters long."
puts new_game.dashes


previous_guesses = []

until new_game.is_over == true 

	puts "Please enter a letter to guess:"
	letter_guess = gets.chomp.downcase

	if previous_guesses.include?(letter_guess)  
		puts "You already guessed that letter!"
		
	elsif new_game.find_char(letter_guess) == true 
		new_game.find_char(letter_guess)
		puts "Correct! The letter '#{letter_guess}' is in the word!\n"
		previous_guesses << letter_guess
		puts new_game.dashes
		new_game.number_of_guesses += 1

	else 
		puts "Sorry, the letter #{letter_guess} is not in the word.\n"
		previous_guesses << letter_guess
		puts new_game.dashes
		new_game.number_of_guesses += 1
	end 

	new_game.game_over

	if new_game.is_over && new_game.dashes == new_game.word
		puts "Congratulations you won the game!"
	elsif new_game.is_over && new_game.dashes != new_game.word
		puts "You lose! Better luck next time sucker!"
	end 


end 



# Bugs and fixes:
# Refactor find_char methods: More DRY?
# Dealing with duplicate letters in words
# elsif conditional not printing correcct message



# until new_game.is_over == true  
	
# 	puts "Player 2, please enter a letter guess:"
# 	letter_guess = gets.chomp
# 	if new_game.find_char(letter_guess)
# 		puts "Correct! '#{letter_guess}' is in the word!"
# 		puts new_game.find_char(letter_guess)
# 		new_game.number_of_guesses += 1 
# 		new_game.is_over
# 	elsif !new_game.find_char(letter_guess)
# 		puts "Sorry, the letter '#{letter_guess}' is not in the word"
# 		new_game.number_of_guesses += 1 
# 	end
# 	new_game.number_of_guesses
# end 
 






# DRIVER CODE 


# puts "Would you like to play? Please type 'yes' or 'no'"
# user_input = gets.chomp.downcase
# if user_input == 'yes'
# 	puts "Great! Let's get started."
# elsif user_input == 'no'
# 	puts "Thanks for stopping by, come back soon!"
# else 
# 	puts "I didn't understand your answer, please try again!"
# end

# hangman = Game.new("code")
# p hangman.dashes
# p hangman.game_over
# p hangman.number_of_guesses
# p hangman.game_over 
# p hangman.find_char("d")

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
