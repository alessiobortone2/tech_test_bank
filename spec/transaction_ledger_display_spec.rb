# frozen_string_literal: true

require 'transaction_ledger_display'

RSpec.describe TransactionLedgerDisplay do
  before(:each) do
    @transaction = Transaction.new
    @transactionledger = TransactionLedger.new
    @transactionledgerdisplay = \
      TransactionLedgerDisplay.new(@transactionledger.log)
  end

  it 'can print the header' do
    expect(@transactionledgerdisplay.print_header).to \
      eq("date || credit || debit || balance\n")
  end

  it 'can show all ops' do
    @transactionledger.top_up(1000)
    @transactionledger.top_up(2000)
    @transactionledger.withdraw(500)
    expect{@transactionledgerdisplay.print_all}.to \
    output("date || credit || debit || balance\n"\
      "04/10/2017 ||  || 500.00 || 2500.00\n"\
      "04/10/2017 || 2000.00 ||  || 3000.00\n"\
      "04/10/2017 || 1000.00 ||  || 1000.00\n").to_stdout
  end
end
