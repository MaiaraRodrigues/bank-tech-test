require './lib/transaction'

describe Transaction do 
  let(:transaction) { Transaction.new('10/01/2012', 0, 1000, 1000) }

  describe '#initialize' do

    it 'should have a value for debit' do
      expect(transaction.debit).to eq(1000)
    end

    it 'should have a value for credit' do
      expect(transaction.credit).to eq(0)
    end

    it 'should have a date' do
      expect(transaction.date).to eq('10/01/2012')
    end
  end 
end 
