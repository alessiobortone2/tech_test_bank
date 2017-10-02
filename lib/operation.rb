require 'date'

# implements single operation
class Operation
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

end
