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
    loop_through_ops
  end

  def loop_through_ops
    temp_array = []
    @balance = 0
    @operations.each do |op|
      @balance += (op.credit - op.debit)
      temp_array << "#{op.date} || #{op.credit} || #{op.debit} || #{@balance}"
    end
    temp_array.reverse_each { |item| puts item }
  end
end
