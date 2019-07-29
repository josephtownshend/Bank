require 'user'

RSpec.describe User do

  it "By default Account array is empty" do
    expect(subject.get_account).to eq []
  end
end
