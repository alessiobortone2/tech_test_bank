require 'account'

RSpec.describe Account do
  before(:each) do
    @account = Account.new
    @operation = Operation.new
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

  it 'can increase the balance' do
    @account.top_up(20)
    expect(@account.balance).to eq(20)
  end

  it 'can reduce the balance' do
    @account.withdraw(10)
    expect(@account.balance).to eq(-10)
  end

  it 'can show all ops' do
    @account.top_up(30)
    @account.withdraw(20)
    expect(@account.show_all_ops.pop).to include("10")
  end
end
