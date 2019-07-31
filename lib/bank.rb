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
    @new_transaction = []
    @new_transaction << "#{@datetoday.date} || #{amount.to_f} || || #{@balance}"
    @transaction_history << @new_transaction.join(' ')
  end

  def debit(amount)
    @balance -= amount.to_f
    @new_transaction = []
    @new_transaction << "#{@datetoday.date} || || #{amount.to_f} || #{@balance}"
    @transaction_history << @new_transaction.join(' ')
  end

  def create_statement
    @transaction_history << @print.print_header
    @transaction_history.reverse.join("\n")
  end

  def print_statement
    print create_statement
    'Statement Printed'
  end
end
