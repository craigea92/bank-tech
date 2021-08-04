require "Date"

class Bank

  attr_reader :account

  def initialize
    @account = {}
  end

  def deposit(money)
    transaction_date = Date.today.strftime("%D/%M/%Y")
    store_transaction(money)
  end

  def withdraw(money)
    raise "Insufficient Funds!" if overdrawn?(money)
    store_transaction(-money)
  end

  def bank_statement
  end

  private

  def date_exist?(transaction_date)
    @account.has_key?(transaction_date)
  end

  def overdrawn?(money)
    calculate_balance < money || calculate_balance.nil?
  end

  def calculate_balance
    return 0 if @account == {}
    @account.values.flatten.inject(:+)
  end

  def store_transaction(money)
    transaction_date = Date.today.strftime("%d/%m/%Y")
    if date_exist?(transaction_date)
      transaction = @account[transaction_date]
      @account[transaction_date] = transaction.unshift(money)
    else
      @account[transaction_date] = [money]
    end
  end

end