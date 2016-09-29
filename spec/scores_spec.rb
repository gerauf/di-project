require 'scores'

describe Scores do
  describe '#list' do
    it 'returns a list of scores for a given country code' do
      scores = Scores.new './test.csv'
      return_value = {2001 => 0.30251184, 2002 => 0.616683645}
      expect(scores.list 'AD').to eq (return_value)
    end
  end

  describe '#average' do
    it 'returns an average score for a given country to 3dp'do
      scores = Scores.new './test.csv'
      return_value = 0.300
      expect(scores.average 'AE').to eq (return_value)
    end

    it 'only bases calculations on non-null values'do
      scores = Scores.new './test.csv'
      return_value = 0.600
      expect(scores.average 'AF').to eq (return_value)
    end
  end
end
