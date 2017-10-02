require_relative './operation.rb'

# implements account
class Account
  attr_reader :balance, :user, :operations
  def initialize(balance = 0, user = 'anon', operations = [])
    @balance = balance
    @user = user
    @operations = operations
  end

  def top_up(money)
    @operation = Operation.new
    @operations << @operation
    @balance += @operation.add(money)
  end

  def withdraw;  end

  def show_balance; end
end
