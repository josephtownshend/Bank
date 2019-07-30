require 'bank'

RSpec.describe Bank do
  before(:each) do
    @bank = Bank.new
  end

  it "Has default balance of zero" do
    expect(@bank.balance).to eq 0
  end

  it "Has a current date" do
    expect(@bank.time).to eq "30/07/19"
  end

  describe "#deposit" do
    it "Can deposit funds into account" do
      @bank.deposit(100)
    expect(@bank.balance).to eq 100
  end
end

describe "#withdraw" do
  it "Can withdraw funds from account" do
    @bank.deposit(100)
    @bank.withdraw(50)
    expect(@bank.balance).to eq 50
  end
end


end
