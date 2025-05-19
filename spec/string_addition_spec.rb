require_relative '../string_addition'

RSpec.describe 'StringAddition' do
  describe '#add' do
    it 'should return 0 for an empty input string' do
      expect(StringAddition.add('')).to eq(0)
    end
  end
end