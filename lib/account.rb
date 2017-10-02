# implements account
class Account
  attr_reader :balance, :user, :operation
  def initialize(balance = 0, user = 'anon', operation = [])
    @balance = balance
    @user = user
    @operation = operation
  end
end
