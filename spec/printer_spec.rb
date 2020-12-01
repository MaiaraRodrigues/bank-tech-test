require './lib/printer'

describe Printer do
  subject(:printer) {described_class.new}
  let(:statement) {double(:statement)}

  it 'respondes to print' do
    expect(printer).to respond_to(:print)
  end

  it 'prints a statement' do
    expect(printer.print(statement)).to eq(statement)
  end
end