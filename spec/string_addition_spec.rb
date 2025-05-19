require_relative '../string_addition'

RSpec.describe 'StringAddition' do
  describe '#add' do
    context "when an empty input string is passed" do
      it 'should return 0' do
        expect(StringAddition.add('')).to eq(0)
      end
    end

    context "when 1 numbers is passed" do
      let(:input) { '2' }  
      
      it "should return that number" do
        expect(StringAddition.add(input)).to eq(2)
      end
    end

    context "when 2 numbers are passed" do
      let(:input) { '2,3' } 

      it "should return sum of 2 numbers" do
        expect(StringAddition.add(input)).to eq(5)
      end
    end

    context "when numbers are passed with new line delimiter" do
      let(:input) { "1\n2,3" } 

      it "should return sum of all numbers" do
        expect(StringAddition.add(input)).to eq(6)
      end
    end

    context "when numbers are passed with differnt delimiter" do
      let(:input) { "//;\n1;2" } 

      it "should return sum of all those numbers" do
        expect(StringAddition.add(input)).to eq(3)
      end
    end

    context "when negative number is passed" do
      let(:input) { "-2" } 

      it "should throw an exception" do
        expect(StringAddition.add(input)).to raise_error("negative numbers not allowed: -2")
      end
    end
  end
end