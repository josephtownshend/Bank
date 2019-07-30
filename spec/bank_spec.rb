# frozen_string_literal: true

require 'bank'

RSpec.describe Bank do
  before(:each) do
    @bank = Bank.new
  end
  describe 'default state' do
    it 'Has default balance of zero' do
      expect(@bank.balance).to eq 0
    end

    it 'Has a current date' do
      expect(@bank.date).to eq '30/07/19'
    end

    it 'Has an empty transaction as default' do
      expect(@bank.transaction).to eq []
    end
  end

  describe '#credit' do
    it 'Can credit funds into account' do
      @bank.credit(100)
      expect(@bank.balance).to eq 100
    end
  end

  describe '#debit' do
    it 'Can debit funds from account' do
      @bank.credit(100)
      @bank.debit(50)
      expect(@bank.balance).to eq 50
    end
  end

  describe 'log_transaction' do
    it 'Can log a deposit with date' do
      @bank.log_transaction
      expect(@bank.transaction).to eq [0, '30/07/19']
    end
  end
end
