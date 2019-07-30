# frozen_string_literal: true

class Bank
  attr_reader :balance, :date, :transaction_history

  def initialize
    @balance = 0
    @date = '30/07/19'
    @transaction_history = []
  end

  def credit(amount)
    @balance += amount
    new_transaction = []
    new_transaction << @date
    new_transaction << "||"
    new_transaction << @balance
    new_transaction << "||"
    new_transaction << "||"
    new_transaction << @balance
    @transaction_history << new_transaction
  end

  def debit(amount)
    @balance -= amount
    new_transaction = []
    new_transaction << @date
    new_transaction << "||"
    new_transaction << "||"
    new_transaction << @balance
    new_transaction << "||"
    new_transaction << @balance
    @transaction_history << new_transaction
  end

end
