# frozen_string_literal: true

require_relative './transaction.rb'

# implements transaction log
class TransactionLog
  attr_reader :balance, :transactions
  def initialize(balance = 0, transactions = [])
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
end
