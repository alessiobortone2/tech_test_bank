# frozen_string_literal: true

require 'transaction_ledger_display'

RSpec.describe TransactionLedgerDisplay do
  before(:each) do
    @transaction = Transaction.new
    @transaction_ledger = TransactionLedger.new
    @transaction_ledger_display = \
      TransactionLedgerDisplay.new(@transaction_ledger.log)
  end

  it 'can show all ops' do
    @transaction_ledger.top_up(1000)
    @transaction_ledger.top_up(2000)
    @transaction_ledger.withdraw(500)
    expect { @transaction_ledger_display.print_all }.to \
      output("date || credit || debit || balance\n"\
      "05/10/2017 ||  || 500.00 || 2500.00\n"\
      "05/10/2017 || 2000.00 ||  || 3000.00\n"\
      "05/10/2017 || 1000.00 ||  || 1000.00\n").to_stdout
  end
end
