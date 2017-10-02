require 'operation'

RSpec.describe Operation do
  it "has a date" do
    operation = Operation.new
    expect(operation.date).to eq(Date.today)
  end

end
