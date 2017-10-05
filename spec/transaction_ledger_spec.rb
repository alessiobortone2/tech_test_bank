# frozen_string_literal: true

require 'transaction_ledger'

RSpec.describe TransactionLedger do
  before(:each) do
    @transaction_ledger = TransactionLedger.new
    @transaction = Transaction.new
  end

  it 'has an initial balance of 0' do
    expect(@transaction_ledger.balance).to eq(0)
  end

  it 'has initially no transactions' do
    expect(@transaction_ledger.log).to eq([])
  end

  it 'can increase the balance' do
    @transaction_ledger.top_up(20)
    expect(@transaction_ledger.balance).to eq(20)
  end

  it 'can reduce the balance' do
    @transactionledger.withdraw(10)
    expect(@transactionledger.balance).to eq(-10)
  end
end
