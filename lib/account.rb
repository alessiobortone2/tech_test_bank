require_relative './operation.rb'

# implements account
class Account
  attr_reader :user, :balance, :operations
  def initialize(user = 'anon', balance = 0, operations = [])
    @user = user
    @balance = balance
    @operations = operations
  end

  def top_up(money)
    @operation = Operation.new
    @balance += @operation.add(money)
    @operations << @operation
  end

  def withdraw(money)
    @operation = Operation.new
    @balance -= @operation.subtract(money)
    @operations << @operation
  end

  def show_all_ops
    puts 'date || credit || debit || balance'
    temp_bal = 0
    arr = []
    @operations.each do |operation|
      delta = operation.credit - operation.debit
      temp_bal += delta
      arr << "#{operation.date} || #{operation.credit} || #{operation.debit} || #{temp_bal}"
    end
    arr.reverse_each { |item| puts item }
  end
end
