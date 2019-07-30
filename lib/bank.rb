# frozen_string_literal: true

class Bank
  attr_reader :balance, :date, :transaction

  def initialize
    @balance = 0
    @date = '30/07/19'
    @transaction = []
  end

  def credit(amount)
    @balance += amount
  end

  def debit(amount)
    @balance -= amount
  end

  def log_transaction
    @transaction << @balance
    @transaction << @date
  end
end
