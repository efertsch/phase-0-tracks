require_relative 'word_game'

describe Game do
	let(:game) {Game.new("code")}

	it "checks if the game is over" do
	expect(game.game_over).to eq true 
	end 

	it "checks if a letter can be matched to an index" do
	expect(game.find_char("o")).to eq "_o__"   
	end 

end