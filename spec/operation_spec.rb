require 'operation'

RSpec.describe Operation do
  before(:each) do
    @operation = Operation.new
  end

  it 'has a date' do
    expect(@operation.date).to eq(Date.today.strftime('%d/%m/%Y'))
  end

  it 'has a default credit of 0' do
    expect(@operation.credit).to eq(0)
  end

  it 'has a default debit of 0' do
    expect(@operation.debit).to eq(0)
  end

  it 'can update the credit' do
    @operation.add(50)
    expect(@operation.credit).to eq(50)
  end

  it 'can update the debit' do
    @operation.subtract(70)
    expect(@operation.debit).to eq(70)
  end
end
