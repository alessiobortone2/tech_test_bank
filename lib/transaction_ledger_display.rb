# frozen_string_literal: true

require_relative './transaction.rb'
require_relative './transaction_ledger.rb'

# implements account
class TransactionLedgerDisplay
  attr_reader :log
  def initialize(log = [])
    @log = log
  end

  def print_all
    print_header
    print_statement
  end

  def print_header
    'date || credit || debit || balance'
  end

  def print_statement
    temp_array = []
    @balance = 0
    @log.each do |tr|
      @balance += (tr.credit -  tr.debit)
      temp_array << "#{tr.date} || #{tr.credit} || #{tr.debit} || #{@balance}"
    end
    temp_array.reverse_each { |item| puts item }
  end
end
