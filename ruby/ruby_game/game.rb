class WordGame 
	attr_accessor :word, :guess_count, :letter_guesses, :dashes

	def initialize(word)
		@word = word
		@letter_guesses = [] 
		@dashes = "_" 
		@guess_count = 0
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
		@dashes = dashes * word.length
	end 

	def insert_letter(word, letter)
		index_of_letter = @word.index(letter)
	  index_of_dash = index_of_letter 
	  @dashes[index_of_dash] = letter
	  @dashes
	end

end 

#USER INTERFACE 

puts "Let's play hangman!\n"

puts "Please enter a word for Player 2 to guess\n"
word = gets.chomp.downcase

game = WordGame.new(word)



puts "Player 1 has chosen their word."

puts "The word chosen by Player 1 is #{game.word.length} letters long.\n"
print game.create_dashes(game.word)

loop do
	puts "\nPlease enter a letter:"
	letter_guess = gets.chomp.downcase
		# if letter_guess.length > 1
		# 	puts "Please enter one letter at a time"
		# elsif letter_guess.is_a? Integer == true 
		# 	puts "This game accepts letter values"
		# end 

	if game.letter_guesses.include?(letter_guess)
		puts "You already guessed the letter '#{letter_guess}'!\n"
		puts "The letters you have guessed are: #{game.letter_guesses}"
	elsif game.check_letter(letter_guess) 
		game.letter_guesses << letter_guess
		puts "The letter'#{letter_guess}'is in the word!\n"
		puts "The letters you have guessed are: #{game.letter_guesses}"
		puts game.insert_letter(game.word,letter_guess) 
		game.guess_count +=1
	elsif !game.check_letter(letter_guess) 
		game.letter_guesses << letter_guess
		puts "Sorry,'#{letter_guess}' isn't in the word!\n"
		puts "The letters you have guessed are: #{game.letter_guesses}" 
		game.guess_count +=1
	end

	if game.dashes == game.word
		puts "WINNER WINNER CHICKEN DINNER!"
		break
	elsif game.guess_count >= game.word.length 
		puts "You lose! Better luck next time, sucker!"
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

# Write a method to check if the letter guessed is in the word
# If it is display the letter in the correct position in the hangman 
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

#OTHER CONSIDERATIONS:
# Account for numbers as input
# Account for mulitple letters as input i.e "yy" (letter.length conditional?)
# Account for nothing ("") as input 
