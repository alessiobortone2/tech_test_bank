# frozen_string_literal: true

require_relative './transaction.rb'

# logs transaction and updates the account balance
class TransactionLedger
  attr_reader :balance, :log
  def initialize(balance = 0, log = [])
    @balance = balance
    @log = log
  end

  def top_up(money)
    @transaction = Transaction.new
    @balance += @transaction.add(money)
    @log << @transaction
  end

  def withdraw(money)
    @transaction = Transaction.new
    @balance -= @transaction.subtract(money)
    @log << @transaction
  end
end
