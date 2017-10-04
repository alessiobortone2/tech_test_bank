# frozen_string_literal: true

require_relative './transaction.rb'
require_relative './transaction_ledger.rb'

# implements account
class TransactionLedgerDisplay
  attr_reader :transactions
  def initialize(transactions)
    @transactions = transactions
  end

  def print_all
    print_header
    print_statement
  end

  def print_header
    puts 'date || credit || debit || balance'
  end

  def print_statement
    temp_array = []
    @balance = 0
    @transactions.each do |op|
      @balance += (op.credit -  op.debit)
      temp_array << "#{op.date} || #{op.credit} || #{op.debit} || #{@balance}"
    end
    temp_array.reverse_each { |item| puts item }
  end
end
