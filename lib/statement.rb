class Statement

  attr_reader :header, :body, :print_statement

  def initialize
    @header = ["date || credit || debit || balance"]
    @body = ["  ||  ||  ||  "]
  end

  def print_statement
    return @header.join
  end

end
