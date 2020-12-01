require './lib/transaction'

describe Transaction do 
  let(:transaction) { Transaction.new('10/01/2012', 1000, 1000) }

  describe '#initialize' do
 

    it 'should have a date' do
      
      expect(transaction.date).to eq('10/01/2012')
    end
  end 
end 