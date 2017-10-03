require 'transaction_log'

RSpec.describe TransactionLog do
  before(:each) do
    @transactionlog = TransactionLog.new
    @transaction = Transaction.new
  end

  it 'has an initial balance of 0' do
    expect(@transactionlog.balance).to eq(0)
  end

  it 'has initially no transactions' do
    expect(@transactionlog.transactions).to eq([])
  end

  it 'can increase the balance' do
    @transactionlog.top_up(20)
    expect(@transactionlog.balance).to eq(20)
  end

  it 'can reduce the balance' do
    @transactionlog.withdraw(10)
    expect(@transactionlog.balance).to eq(-10)
  end
end
