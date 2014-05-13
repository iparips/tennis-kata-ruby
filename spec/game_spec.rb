require 'rspec'
require 'game'


describe Game do

  describe '#play' do

    it 'returns 0 at start of the game' do
      g = Game.new
      g.play([])
      expect(g.score).to eq([0, 0])
    end

    it '1st player wins' do
      g = Game.new
      g.play([1,1,1,1])
      expect(g.score).to eq(['won', 'lost'])
    end

    it '2st player wins' do
      g = Game.new
      g.play([2,2,2,2])
      expect(g.score).to eq(['lost', 'won'])
    end

  end

end
