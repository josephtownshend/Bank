require 'statement'

RSpec.describe Statement do
  before(:each) do
    @statement = Statement.new
  end

  describe "header" do
    it "Statement has a header" do
      expect(@statement.header).to eq ["date || credit || debit || balance"]
    end
  end

  describe "body" do
    it "Statement has a blank body" do
      expect(@statement.body).to eq ["  ||  ||  ||  "]
    end
  end

  describe "#print_header" do
    it "Can print the header" do
      expect(@statement.print_header).to eq "date || credit || debit || balance"
    end
  end

  describe "#print_body" do
    it "Can print the body" do
      expect(@statement.print_body).to eq "  ||  ||  ||  "
    end
  end

end
