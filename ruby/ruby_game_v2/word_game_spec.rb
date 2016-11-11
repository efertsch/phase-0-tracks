require_relative 'word_game'

describe Game do
	let(:game) {Game.new("code")}
	it "initializes a new game" do
	expect(game.initialize).to eq "Initializing a new game..."
	end 
end