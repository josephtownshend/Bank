require 'print'

RSpec.describe Print do
  before(:each) do
    @print = Print.new
  end
  describe '#print_header' do
    it 'Prints the header' do
      expect(@print.print_header).to eq 'date || credit || debit || balance'
    end
  end
end
