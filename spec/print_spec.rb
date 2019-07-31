require 'print'

RSpec.describe Print do
  before(:each) do
    @print = Print.new
  end
  describe '#initialize' do
    it 'Has a header' do
      expect(@print.header).to eq 'date || credit || debit || balance'
    end
  end
  
  describe 'create_statement' do
    it 'Creates the statement' do
      transaction_history = ["12/11/1990 || || 500.0 || 2500.0\n12/11/1990 || 2000.0 || || 3000.0\n12/11/1990 || 1000.0 || || 1000.0"]

      expect(@print.create_statement(transaction_history)).to eq ("date || credit || debit || balance\n12/11/1990 || || 500.0 || 2500.0\n12/11/1990 || 2000.0 || || 3000.0\n12/11/1990 || 1000.0 || || 1000.0")
    end
  end
end
