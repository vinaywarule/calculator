require_relative '../string_addition'

RSpec.describe 'StringAddition' do
  describe '#add' do
    context "when an empty input string is pass" do
      it 'should return 0' do
        expect(StringAddition.add('')).to eq(0)
      end
    end

    context "when 1 numbers is pass" do
      let(:input) { '2' }  
      
      it "should return that number" do
        expect(StringAddition.add(input)).to eq(2)
      end
    end
  end
end