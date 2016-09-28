require 'Main'

describe Scores do
  describe '#list' do
    it 'returns a list of scores for a given country code' do
      scores = Scores.new './test.csv'
      expect(scores.list)

    end
  end
end
