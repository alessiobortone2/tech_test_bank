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
    puts print_header + print_statement.join("\n")
  end

  private

  def print_header
    "date || credit || debit || balance\n"
  end

  def print_statement
    balance = 0
    @log.map! do |tr|
      balance += tr.delta
      "#{tr.date} || #{format('%.2f', tr.credit) if tr.credit != 0} ||"\
      " #{format('%.2f', tr.debit) if tr.debit != 0} ||"\
      " #{format('%.2f', balance)}"
    end
    @log.reverse!
  end
end
