# frozen_string_literal: true

require_relative './transaction.rb'
require_relative './account.rb'

# implements account
class TransactionLogPrint
  attr_reader :balance, :transactions
  def initialize(balance, transactions)
    @balance = balance
    @transactions = transactions
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
