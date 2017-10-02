require 'account'

RSpec.describe Account do
  before(:each) do
    @account = Account.new
  end

  it 'has an initial balance of 0' do
    expect(@account.balance).to eq(0)
  end

  it 'is linked to a specific user' do
    expect(@account.user).to eq('anon')
  end

  it 'has initially no operations' do
    expect(@account.operations).to eq([])
  end

  it 'can update the balance operation' do
    @operation = Operation.new
    @account.top_up(20)
    expect(@account.balance).to eq(20)
  end


  # it 'can update the balance' do
  #   @account.operation.add(50)
  #   expect(@account.balance).to eq(50)
  # end
end
