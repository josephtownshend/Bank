class Statement

  attr_reader :header, :body, :print_header, :print_body

  def initialize
    @header = ["date || credit || debit || balance"]
    @body = ["  ||  ||  ||  "]
  end

  def print_header
    return @header.join
  end

  def print_body
    return @body.join
  end

end
