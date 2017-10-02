require_relative './operation.rb'

# implements account
class Account
  attr_reader :user, :operations, :balance
  def initialize(user = 'anon', balance = 0, operations = [])
    @user = user
    @operations = operations
    @balance = balance
  end

  def top_up(money)
    @operation = Operation.new
    @operations << @operation
    @balance += @operation.add(money)
  end

  def withdraw(money)
    @operation = Operation.new
    @operations << @operation
    @balance -= @operation.subtract(money)
  end

  def show_all_ops
    puts 'date || credit || debit || balance'
    @operations.reverse!
    @operations.each do |operation|
      print "#{operation.date} || #{operation.credit} || #{operation.debit} ||"
      puts " #{@balance}"
    end
  end
end
