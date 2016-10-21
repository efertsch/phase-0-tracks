class WordGame 
	attr_accessor :word, :guess_count, :game_over, :letter_guesses

	def initialize(input_word)
		@word = input_word
		@letter_guesses = []
		@guess_count = 0
		@game_over = false

		puts "Initializing a new game..."
	end 

	# def guess_counter
	# 	@guess_count += 1
	# 	if guess_counter > @word.length
	# 		@game_over == true 
	# 	# elsif # How do we find out if the words are equal
	# 	# 	@game_over == true
	# 	else 
	# 		@game_over
	# 	end 
	# end  
	
	def print_blanks
		length_of_word = @word.length
		dash = "_ " 
		dashes = dash * length_of_word
			print dashes
	end 

	def check_letter(letter_guess)
		if @word.include? letter_guess  
			check_letter = true
		else 
			check_letter = false 
		end  
	end 
	
	def insert_letter
		if check_letter == true 
			insert_location = @word.rindex(char)
			p insert_location
			print_blanks.insert(insert_location, print_blanks.delete_at(insert_location))
		else
			print_blanks
		end
		print_blanks
	end

	def game_over
		if @guess_count > @word.length
			@game_over == true 
		# elsif 
		# 	@game_over == true
		else 
			@game_over
		end 
	end 
		
end 



#USER INTERFACE 

puts "Welcome to my word guessing game!"

puts "Please enter a word for Player 2 to guess"
word = gets.chomp.downcase

puts "Player 1 has chosen their word."

puts "The word chosen by Player 1 is #{word.length} letters long. "

game = WordGame.new(word)

while !game.game_over
	puts "Please enter a letter"
	letter_guess = gets.chomp.downcase
	@letter_guesses.push(letter_guess)
	if game.check_letter(letter_guess) == true 
		puts "The letter '#{letter_guess}'is in the word!"
		p @letter_guess
		# print_blanks
		guess_count += 1
	# elsif letter_guess == guesses_stored
	# 	puts "You already guessed the letter '#{letter_guess}'!"
	# 	print_blanks
	else
		puts "Sorry,'#{letter_guess}' isn't in the word!"
		# print_blanks
		guess_count += 1
	end 
end 





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