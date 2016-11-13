require_relative 'word_game'

describe Game do
	let(:game) {Game.new("code")}

	it "checks if a game is over" do
	game.number_of_guesses = 4
	expect(game.game_over).to eq true 
	end 

	it "adds letter guess to previous guesses array" do
		game.previous_guesses = ["c"]
		expect(game.add_guesses("o")).to eq ["c", "o"]
	end 

	it "checks if a letter can be matched/replaced to an index" do
	expect(game.insert_letter("o")).to eq "_o__"   
	end 

end