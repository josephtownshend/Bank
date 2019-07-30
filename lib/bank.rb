# frozen_string_literal: true

class Bank
  attr_reader :balance, :date, :transaction_history, :header

  def initialize
    @balance = 0
    @date = '30/07/19'
    @transaction_history = []
    @header = "date || credit || debit || balance"
  end

  def credit(amount)
    @balance += amount
    @new_transaction = []
    @new_transaction << "#{@date} || #{amount} || || #{@balance}"
    @transaction_history << @new_transaction.join(" ")
  end

  def debit(amount)
    @balance -= amount
    @new_transaction = []
    @new_transaction << "#{@date} || || #{amount} || #{@balance}"
    @transaction_history << @new_transaction.join(" ")
  end

  def create_statement
    @transaction_history << @header
    @transaction_history.reverse
  end

  def print_statement
    @transaction_history.each { |entry| print entry }
  end

end
