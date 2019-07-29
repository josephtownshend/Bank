class Statement

  attr_reader :header, :body

  def initialize
    @header = ["date || credit || debit || balance"]
    @body = ["  ||  ||  ||  "]
  end


end
