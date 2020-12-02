require './lib/printer'

describe Printer do
  subject(:printer) { described_class.new }
  let(:transaction1) { double(:transaction, date: "10/01/2012", credit: "", debit: "1000", balance: "1000") }

  it 'respondes to print' do
    expect(printer).to respond_to(:print_format)
  end
 
  describe '#print' do

    it 'should print the column' do
      expected_heading = "date || credit || debit || balance\n"
      expected_transaction = "10/01/2012 ||  || 1000 || 1000\n"
      statement = [transaction1]
      expected_statement = expected_heading + expected_transaction
      expect { printer.print_format(statement) }.to output(expected_statement).to_stdout
    end
  end 
end
