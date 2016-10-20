class Word_Game 

	def initialize(input_word1, input_word2)
		puts "Initializing a new game..."
		@word1 = input_word1
		@word2 = input_word2
		@guess_count = 0
		@game_over = false
	end 

	attr_accessor :word1, :word2, :guess_count, :game_over


	def calc_allowed_guesses()
		allowed_guesses = @word1.length 
		if guess_count > allowed_guesses
			@game_over = true 
		else 
			false 
		end 
		@guess_count +=1
	end 


end 
 



#DRIVER CODE 

puts "Welcome to my word guessing game!"

game = Word_Game.new("Unicorn")









#PSEUDOCODE
# Create a word game class
# Define class and initialize method within the class that take input as parameters
# Assign input to attributes within class
# Print input/attributes as debugging step
# Write a method to limit the number of guesses based on the length of the input word 
# Store guesses in some way
# Exclude guesses that have been stored and print a repeat message
# Write a method to provide feedback to the user
# The method should match the length of the word and to a string of underscores (hangman style)
# If the guess input is equal to a character in the input word, replace the underscore at that position with the guessed character
# print out the underscore string to the user 
# If the user wins print “Winner Winner Chicken Dinner! Play again” otherwise, print “Better luck next time sucker!”