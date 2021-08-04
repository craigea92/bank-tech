require "Date"

class Bank

  attr_reader :account

  def initialize
    @account = {}
  end

  def deposit(money)
    transaction_date = Date.today.strftime("%D/%M/%Y")
    if date_exist?(transaction_date)
      transaction = @account[transaction_date]
      @account[transaction_date] = transaction.unshift(money)
    else
      @account[transaction_date] = [money]
    end
  end

  def withdraw(money)
    raise "Insufficient Funds!" if @account < money
    @account -=money
  end

  def bank_statement
  end

  private

  def date_exist?(transaction_date)
    @account.has_key?(transaction_date)
  end

end