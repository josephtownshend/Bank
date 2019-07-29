require 'statement'

RSpec.describe Statement do
  before(:each) do
    @statement = Statement.new
  end

  describe "#header" do
    it "Statement has a header" do
      expect(@statement.header).to eq "date || credit || debit || balance"
    end
  end

end
