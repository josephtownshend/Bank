# frozen_string_literal: true

require_relative 'print'

class Bank
  attr_reader :balance, :date, :transaction_history, :header

  def initialize(print = Print.new, datetoday = DateToday.new)
    @balance = 0
    @transaction_history = []
    @print = print
    @datetoday = datetoday
  end

  def credit(amount)
    @balance += amount.to_f
    credit_transaction(amount)
  end

  def debit(amount)
    @balance -= amount.to_f
    debit_transaction(amount)
  end

  def print_statement
    print @print.create_statement(@transaction_history)
    'Statement Printed'
  end

  private

  def credit_transaction(amount)
    @new_transaction = []
    @new_transaction << "#{@datetoday.date} || #{amount.to_f} || || #{@balance}"
    @transaction_history << @new_transaction.join(' ')
  end

  def debit_transaction(amount)
    @new_transaction = []
    @new_transaction << "#{@datetoday.date} || || #{amount.to_f} || #{@balance}"
    @transaction_history << @new_transaction.join(' ')
  end
end
