# frozen_string_literal: true

require 'bank'

RSpec.describe Bank do
  before(:each) do
    Timecop.freeze(1990, 11, 12)
    @bank = Bank.new
    @print = Print.new
  end
  describe '#initialize' do
    it 'Has balance of zero' do
      expect(@bank.balance).to eq 0
    end

    it 'Has an empty transaction_history' do
      expect(@bank.transaction_history).to eq []
    end
  end

  describe '#credit' do
    it 'Can credit funds into account' do
      @bank.credit(100)
      expect(@bank.transaction_history[0]).to eq '12/11/1990 || 100.0 || || 100.0'
    end
  end

  describe '#debit' do
    it 'Can debit funds from account' do
      @bank.credit(100)
      @bank.debit(50)
      expect(@bank.transaction_history[1]).to eq '12/11/1990 || || 50.0 || 50.0'
    end
  end

  describe '#print_statement' do
    it 'Can print the statement' do
      @bank.credit(1000.00)
      @bank.credit(2000.00)
      @bank.debit(500.00)
      expect { @bank.print_statement }.to output([
        'date || credit || debit || balance',
        '12/11/1990 || || 500.0 || 2500.0',
        '12/11/1990 || 2000.0 || || 3000.0',
        '12/11/1990 || 1000.0 || || 1000.0'
      ].join("\n")).to_stdout
    end
  end

  describe 'Multple transactions' do
    it 'Can add multiple transactions to transaction_history' do
      @bank.credit(1000.00)
      @bank.credit(2000.00)
      @bank.debit(500.00)
      expect(@bank.transaction_history[0]).to eq '12/11/1990 || 1000.0 || || 1000.0'
      expect(@bank.transaction_history[1]).to eq '12/11/1990 || 2000.0 || || 3000.0'
      expect(@bank.transaction_history[2]).to eq '12/11/1990 || || 500.0 || 2500.0'
    end
  end
end

#
# feature test
# #
# # bank.deposit(1000)
# # date mocked
# # bank.deposit(2500)
# # date mocked
# # bank.deposit(3000)
# # date mocked
# #timecop.return #to reset time
# # bank.print statement
#
#
# unit test
#
# everything should be mocked
# so then the feature test - prooves functionality
