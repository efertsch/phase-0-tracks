#Rspec Template 
# “describe block for each group of tests’
	#’it’ block for each individual test
		#expect (<YOUR CODE>).to eq <RESULT>

require_relative 'game'

describe Word_Game do
 	let(:game) { Word_Game.new	
	it "initialize a new instance" do
	expect(game.).to eq game = Word_Game.new(input_word)
	end 
end
