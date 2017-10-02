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

  it 'has a list of operations' do
    expect(@account.operation).to eq([])
  end
end
