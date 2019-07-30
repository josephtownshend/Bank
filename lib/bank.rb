class Bank

  attr_reader :balance, :time

  def initialize
    @balance = 0
    @time = "30/07/19"
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end
