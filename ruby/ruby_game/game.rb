class WordGame 
	attr_accessor :word, :guess_count, :letter_guesses, :dashes, :final_word_guess
	attr_reader :game_over

	def initialize(word)
		@word = word
		@letter_guesses = []
		@final_word_guess = ""
		@dashes = "_ " 
		@guess_count = 0
		@game_over = false 
		puts "Initializing a new game..."
	end  
	

	def check_letter(letter_guess)
		if @word.include? letter_guess  
			check_letter = true
		else 
			check_letter = false 
		end  
	end 

	def create_dashes(word)
		@dashes.each do |dash|
			dash * word.length
		end 
	end 

	def insert_letter(word, letter)
	 index_of_letter = @word.index(letter)
	 index_of_dash = index_of_letter 
	 @dashes[index_of_dash] = letter
	 @dashes
	end

	def guess_counter
		@guess_count += 1
	end 


	def is_game_over
		@game_over 
	end 

end 



#USER INTERFACE 

puts "Welcome to my word guessing game!"

puts "Please enter a word for Player 2 to guess"
word = gets.chomp.downcase

game = WordGame.new(word)

puts "Player 1 has chosen their word."

puts "The word chosen by Player 1 is #{word.length} letters long.\n"


until game.game_over
	puts "\nPlease enter a letter:"
	letter_guess = gets.chomp.downcase

	if game.check_letter(letter_guess) 
		game.letter_guesses << letter_guess
		puts "The letter'#{letter_guess}'is in the word!\n"
		p game.letter_guesses
		p game.insert_letter(game.word,letter_guess) 
	elsif !game.check_letter(letter_guess) 
		game.letter_guesses << letter_guess
		puts "Sorry,'#{letter_guess}' isn't in the word!\n"
		p game.letter_guesses 
	else
		puts "You already guessed the letter '#{letter_guess}'!\n"
		p game.letter_guesses
	end
		game.guess_counter 
		if game.insert_letter(game.word,letter_guess) == game.word
			puts "WINNER WINNER CHICKEN DINNER!"
			break
		elsif game.guess_counter > game.word.length + 1
			puts "You lose!"
			break
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