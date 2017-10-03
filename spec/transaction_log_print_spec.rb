# frozen_string_literal: true

require 'transaction_log'

RSpec.describe TransactionLog do
  before(:each) do
    @transactionlog = TransactionLog.new
    @transaction = Transaction.new
  end

  it 'can show all ops' do
    @transactionlog.top_up(40)
    @transactionlog.withdraw(15)
    expect(@transactionlog.show_all_ops.pop).to include('25')
  end
end
