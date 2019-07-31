require_relative 'bank'

class Print

attr_reader :header

  def initialize
    @header = 'date || credit || debit || balance'
  end

  def format_statement(transaction_history)
    transaction_history << @header
    transaction_history.reverse.join("\n")
  end

end
