# frozen_string_literal: true

require 'transaction'

RSpec.describe Transaction do
  before(:each) do
    @transaction = Transaction.new
  end

  it 'has a date' do
    expect(@transaction.date).to eq(Date.today.strftime('%d/%m/%Y'))
  end

  it 'has a default credit of 0' do
    expect(@transaction.credit).to eq(0)
  end

  it 'has a default debit of 0' do
    expect(@transaction.debit).to eq(0)
  end

  it 'can update the credit' do
    @transaction.add(50)
    expect(@transaction.credit).to eq(50)
  end

  it 'can update the debit' do
    @transaction.subtract(70)
    expect(@transaction.debit).to eq(70)
  end

  it 'can calculate the delta' do
    @transaction.add(70)
    @transaction.subtract(50)
    expect(@transaction.delta).to eq(20)
  end
end
