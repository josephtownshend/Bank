# frozen_string_literal: true

require 'bank'

RSpec.describe Bank do
  before(:each) do
    Timecop.freeze(2012, 0o1, 10)
    @bank = Bank.new
  end

  describe 'Bank feature test' do
    it 'Can run the Bank app' do
      Timecop.freeze(2012, 0o1, 10)
      @bank.credit(1000.00)
      Timecop.freeze(2012, 0o1, 13)
      @bank.credit(2000.00)
      Timecop.freeze(2012, 0o1, 14)
      @bank.debit(500.00)
      Timecop.return
      expect { @bank.print_statement }.to output([
        'date || credit || debit || balance',
        '14/01/2012 || || 500.0 || 2500.0',
        '13/01/2012 || 2000.0 || || 3000.0',
        '10/01/2012 || 1000.0 || || 1000.0'
      ].join("\n")).to_stdout
    end
  end
end
