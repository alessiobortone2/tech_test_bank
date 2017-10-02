require 'date'

# implements single operation
class Operation
  attr_reader :date, :credit, :debit
  def initialize(date = Date.today, credit = 0, debit = 0)
    @date = date
    @credit = credit
    @debit = debit
  end
end
