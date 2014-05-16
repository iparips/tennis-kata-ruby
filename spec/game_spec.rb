require 'spec_helper'
require 'game'

describe Game do

  let(:g) { Game.new }

  describe '#play' do

    it 'returns 0 at start of the game' do
      g.play([])
      sleep(10)
      expect(g.score).to eq([0, 0])
    end

    it '1st player wins' do
      g.play([1,1,1,1])
      expect(g.score).to eq(['won', 'lost'])
    end

    it '2st player wins' do
      g.play([2,2,2,2])
      expect(g.score).to eq(['lost', 'won'])
    end

    it 'mixed score' do
      g.play([1,1,2,2])
      expect(g.score).to eq([30, 30])
    end

    it 'is duce' do
      g.play([1,1,1,2,2,2])
      expect(g.score).to eq(['duce'])
    end

    it 'advantage 1' do
      g.play([1,1,1,1,2,2,2])
      expect(g.score).to eq(['adv 1'])
    end

    it 'advantage 2' do
      g.play([1,1,1,1,2,2,2,2,2])
      expect(g.score).to eq(['adv 2'])
    end

    it '1 wins after duce' do
      g.play([1,1,1,1,1,1,2,2,2,2])
      expect(g.score).to eq(['won', 'lost'])
    end

  end

end
