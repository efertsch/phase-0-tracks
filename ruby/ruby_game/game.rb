class Word_Game 

	puts "Welcome to my word guessing game!"

	def initialize(input_word)
		puts "Initializing a new game..."
		@word = input_word
	end 

	attr_accessor :word


	def number_of_guesses()
	end 


end 
 
#game = Word_Game.new("Unicorn")















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