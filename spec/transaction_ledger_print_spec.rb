# frozen_string_literal: true

require 'transaction_ledger_display'

RSpec.describe TransactionLedgerDisplay do
  before(:each) do
    @transactionledgerdisplay = TransactionLedgerDisplay.new
    @transactionledger = TransactionLedger.new
    @transaction = Transaction.new
  end

  it 'can show all ops' do
    @transactionledger.top_up(40)
    @transactionledger.withdraw(15)
    expect(@transactionledger.show_all_ops.pop).to include('25')
  end
end
