require 'print'

RSpec.describe Print do
  before(:each) do
    @print = Print.new
  end
  describe '#initialize' do
    it 'has a header' do
      expect(@print.header).to eq 'date || credit || debit || balance'
    end
  end
end
