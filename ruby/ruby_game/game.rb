class WordGame 
	attr_accessor :word, :guess_count, :game_over

	def initialize(input_word)
		@word = input_word
		@guess_count = 0
		@game_over = false
		puts "Initializing a new game..."
	end 

	def guess_counter
		@guess_count += 1
	end  
	
	def print_blanks
		length_of_word = @word.length
		dash = "_ " 
		dashes = dash * length_of_word
			print dashes
	end 

	def check_letter(char)
		guess_counter
		if @word.include? char 
			puts "The letter '#{char}' is in the word you're guessing!" 
			print_blanks
			check_letter = true
		else 
			puts "The letter '#{char}' is not in the word you are guessing!"
			print_blanks
			check_letter = false 
		end 
	end 
	
	def insert_letter(char)	
		if check_letter == true 
			insert_location = @word[check_letter]
			print_blanks.insert(char[insert_location])
		else
			print_blanks
		end 
	end 
	
	
	
end 



 

#DRIVER CODE 

puts "Welcome to my word guessing game!"

game = WordGame.new("Pickles")

game.check_letter("o") 







#PSEUDOCODE
# Create a word game class
# Initialize method within the class that takes input as parameters
# Assign input to attributes within class
# Work on writing rspec test code and running until condition passes 

# Write a method that prints "_ _ _ _ _" that is equal to the length of the word
# And can be updated to a letter based on user guess 
# Work on writing rspec test code and running until condition passes 

# Write a method to check if the letter guessed is in the word, if it is display the letter in the correct position in the hangman 
# The player moves to next turn  
# If it is not the player moves to next turn
# If the guess has already occurred, the player does not lose a turn
# Work on writing rspec test code and running until condition is met

# Write driver code to loop through the game 
# While the game is not over, prompt the user for a letter and store the input
# Compare the stored input to the word they are guessing 
# If letter is in the word print an encouraging message and ask for another letter, move to next turn
# If the letter is not in the word print a discouraging message and move to next turn
# If letter has already been guessed print out a message saying so nothing happens 
# Do this until the user runs out of turns or guesses the word
# If the user runs out of turns, harass them
# If the user gets the word congratulate them.







# The method should match the length of the word and to a string of underscores (hangman style)
# If the guess input is equal to a character in the input word, replace the underscore at that position with the guessed character
# print out the underscore string to the user 
# If the user wins print “Winner Winner Chicken Dinner! Play again” otherwise, print “Better luck next time sucker!”