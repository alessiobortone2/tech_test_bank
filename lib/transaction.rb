require 'date'

# implements single transaction
class Transaction
  attr_reader :date, :credit, :debit
  def initialize(date = Date.today, credit = 0, debit = 0)
    @date = date.strftime('%d/%m/%Y')
    @credit = credit
    @debit = debit
  end

  def add(money)
    @credit = money
  end

  def subtract(money)
    @debit = money
  end

  def delta
    @delta = @credit - @debit
  end
end
