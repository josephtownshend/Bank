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
    @new_transaction << @date
    @new_transaction << "||"
    @new_transaction << amount
    @new_transaction << "||"
    @new_transaction << "||"
    @new_transaction << @balance
    @transaction_history << @new_transaction.join(" ")
  end

  def debit(amount)
    @balance -= amount
    @new_transaction = []
    @new_transaction << @date
    @new_transaction << "||"
    @new_transaction << "||"
    @new_transaction << amount
    @new_transaction << "||"
    @new_transaction << @balance
    @transaction_history << @new_transaction.join(" ")
  end

  # def add_transaction
  #   @transaction_history << @new_transaction.join(" ")
  # end


end
