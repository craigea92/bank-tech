class Bank

  attr_reader :account

  def initialize
    @account = 0
  end

  def deposit(money)
    @account += money
  end

  def withdraw(money)
    raise "Insufficient Funds!" if @account < money
    @account -=money
  end

end