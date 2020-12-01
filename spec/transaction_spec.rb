require 'transaction'

describe Transaction do 

  describe '#initialize' do
    before do 
      transaction = Transaction.new('10/01/2012', 1000, 1000)
    end 

    it 'should have a date' do
      transaction = Transaction.new('10/01/2012', 1000, 1000)
      expect(transaction.date).to eq('10/01/2012')
    end
  end 
end 