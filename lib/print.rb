class Print

attr_reader :header

  def initialize
    @header = 'date || credit || debit || balance'
  end

  def create_statement(transaction_history)
    add_header(transaction_history)
    format_statement(transaction_history)
  end

  private

  def add_header(transaction_history)
    transaction_history << @header
  end

  def format_statement(transaction_history)
    transaction_history.reverse.join("\n")
  end

end
