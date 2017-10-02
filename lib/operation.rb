require 'date'

# implements single operation
class Operation
  attr_reader :date, :credit, :debit, :balance, :user
  def initialize(date = Date.today, credit = 0, debit = 0, balance = 0, user = 'anon')
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
    @user = user
  end
end
