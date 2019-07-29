require 'statement'


RSpec.describe Statement do
  before(:each) do
    @statement = Statement.new
  end

  describe "#print_first_line" do
    it "Can return the first line of statment" do
      expect(@statement.print_first_line).to eq "date || credit || debit || balance"
    end
  end

end
