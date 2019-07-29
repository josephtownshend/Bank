require 'bank'

RSpec.describe Bank do
  it "Default balance of zero" do
    expect(subject.current_balance).to eq 0
  end
end
