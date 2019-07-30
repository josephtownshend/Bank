# frozen_string_literal: true

require 'bank'

RSpec.describe Bank do
  before(:each) do
    @bank = Bank.new
  end
  describe '#initialize' do
    it 'Has balance of zero' do
      expect(@bank.balance).to eq 0
    end

    it 'Has a current date' do
      expect(@bank.date).to eq '30/07/19'
    end

    it 'Has an empty transaction_history' do
      expect(@bank.transaction_history).to eq []
    end

    it 'Has a header for statement' do
      expect(@bank.header).to eq 'date || credit || debit || balance'
    end
  end

  describe '#credit' do
    it 'Can credit funds into account' do
      @bank.credit(100)
      expect(@bank.transaction_history[0]).to eq '30/07/19 || 100 || || 100'
    end
  end

  describe '#debit' do
    it 'Can debit funds from account' do
      @bank.credit(100)
      @bank.debit(50)
      expect(@bank.transaction_history[1]).to eq '30/07/19 || || 50 || 50'
    end
  end

  describe '#create_statement' do
    it 'Can create a full statement' do
      @bank.credit(1000)
      @bank.credit(2000)
      @bank.debit(500)
      expect(@bank.create_statement).to eq([
        'date || credit || debit || balance',
        '30/07/19 || || 500 || 2500',
        '30/07/19 || 2000 || || 3000',
        '30/07/19 || 1000 || || 1000'
      ].join("\n"))
    end
  end

  describe '#print_statement' do
    it 'Can print the statement' do
      @bank.credit(1000)
      @bank.credit(2000)
      @bank.debit(500)
      expect { @bank.print_statement }.to output([
        'date || credit || debit || balance',
        '30/07/19 || || 500 || 2500',
        '30/07/19 || 2000 || || 3000',
        '30/07/19 || 1000 || || 1000'
      ].join("\n")).to_stdout
    end
  end

  describe 'Multple transactions' do
    it 'Can add multiple transactions to transaction_history' do
      @bank.credit(1000)
      @bank.credit(2000)
      @bank.debit(500)
      expect(@bank.transaction_history[0]).to eq '30/07/19 || 1000 || || 1000'
      expect(@bank.transaction_history[1]).to eq '30/07/19 || 2000 || || 3000'
      expect(@bank.transaction_history[2]).to eq '30/07/19 || || 500 || 2500'
    end
  end
end
