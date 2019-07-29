require 'user'

RSpec.describe User do
  before(:each) do
    @user = User.new
  end

  it "By default Account array is empty" do
    expect(@user.get_account).to eq []
  end
end
