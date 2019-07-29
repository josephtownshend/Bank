require 'bank'

RSpec.describe Bank do
  it "Default balance of zero" do
    expect(subject.get_balance).to eq 0
  end

  describe "#deposit" do
    it "Can deposit funds into account" do
    subject.deposit(100)
    expect(subject.get_balance).to eq 100
  end
end

describe "#withdaw" do
  it "Can withdaw funds from account" do
    subject.deposit(100)
    subject.withdraw(50)
    expect(subject.get_balance).to eq 50
  end
end


end
