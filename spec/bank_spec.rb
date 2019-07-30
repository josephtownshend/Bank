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
      expect(@bank.transaction_history).to eq []
    end

    it 'Has an header for statement' do
      expect(@bank.header).to eq "date || credit || debit || balance"
    end
  end

  describe '#credit' do
    it 'Can credit funds into account' do
      @bank.credit(100)
      expect(@bank.transaction_history[0]).to eq "30/07/19 || 100 || || 100"
    end
  end

  describe '#debit' do
    it 'Can debit funds from account' do
      @bank.credit(100)
      @bank.debit(50)
      expect(@bank.transaction_history[1]).to eq "30/07/19 || || 50 || 50"
    end
  end

  describe '#create_statement' do
    it 'Can create a full statement and order it' do
      @bank.credit(100)
      @bank.debit(50)
      expect(@bank.create_statement).to eq ["date || credit || debit || balance", "30/07/19 || || 50 || 50", "30/07/19 || 100 || || 100"]
    end
  end

  describe 'Multple transactions' do
    it "Can add multiple transactions to t_history" do
      @bank.credit(100)
      @bank.credit(25)
      @bank.debit(50)
      expect(@bank.transaction_history[0]).to eq "30/07/19 || 100 || || 100"
      expect(@bank.transaction_history[1]).to eq "30/07/19 || 25 || || 125"
      expect(@bank.transaction_history[2]).to eq "30/07/19 || || 50 || 75"
    end
  end

end
