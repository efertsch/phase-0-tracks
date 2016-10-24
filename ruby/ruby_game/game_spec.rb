

require_relative 'game'

describe WordGame do
let (:game) {WordGame.new("pickle")}

	it "checks if letter is in a word" do
		expect(game.check_letter("i")).to eq true 
	end 

	it "creates dashes based on word length" do
		expect(game.create_dashes("pickle")).to eq "______"
	end

	it "replaces hangman underscore with letter" do
		game.create_dashes("pickle")
		expect(game.insert_letter("pickle", "k")).to eq "___k__"
	end 
end 


