require 'date_today'
require 'timecop'

RSpec.describe DateToday do
  before(:each) do
    Timecop.freeze(1990, 11, 12)
    @datetoday = DateToday.new
  end

  describe '#initialize' do
    it 'Has a current date' do
      expect(@datetoday.date).to eq "12/11/1990"
    end
  end
end
