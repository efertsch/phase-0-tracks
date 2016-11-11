require_relative 'word_game'

describe Game do
	let(:game) {Game.new("code")}

	it "checks if a game is over" do
	game.number_of_guesses = 4
	expect(game.game_over).to eq true 
	end 

	it "checks if a letter is in a word" do
	expect(game.check_if_letter("c")).to eq true 
	end 

	it "checks if a letter can be matched/replaced to an index" do
	expect(game.find_char("o")).to eq "_o__"   
	end 

end