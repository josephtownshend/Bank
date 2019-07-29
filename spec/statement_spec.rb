require 'statement'


RSpec.describe Statement do

it "Can return the first line of statment" do
  expect(subject.print_first_line).to eq "date || credit || debit || balance"

  end
end
