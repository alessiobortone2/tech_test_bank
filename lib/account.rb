require_relative './transaction.rb'

# implements account
class Account
  attr_reader :user, :balance, :transactions
  def initialize(user = 'anon', balance = 0, transactions = [])
    @user = user
    @balance = balance
    @transactions = transactions
  end

  def top_up(money)
    @transaction = Transaction.new
    @balance += @transaction.add(money)
    @transactions << @transaction
  end

  def withdraw(money)
    @transaction = Transaction.new
    @balance -= @transaction.subtract(money)
    @transactions << @transaction
  end

  def show_all_ops
    puts 'date || credit || debit || balance'
    loop_through_ops
  end

  def loop_through_ops
    temp_array = []
    @balance = 0
    @transactions.each do |op|
      @balance += (op.credit - op.debit)
      temp_array << "#{op.date} || #{op.credit} || #{op.debit} || #{@balance}"
    end
    temp_array.reverse_each { |item| puts item }
  end
end
