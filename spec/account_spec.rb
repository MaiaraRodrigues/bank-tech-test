require 'account'

describe 'Account' do
  subject(:account) { Account.new(transaction_class: fake_transaction_class) }
 
  let(:fake_transaction_class) { double(:fake_transaction_class, new: transaction) }
  let(:transaction) { double(:transaction, date: "10/01/2012", credit: "", debit: "1000", balance: "1000") }


  

  describe '#initialize' do
    it 'starts with a balance of 0' do

      expect(account.balance).to eq 0
    end

    it 'has an statement array' do
      expect(account.statement).to eq []
    end
  end
  
  describe '#deposit' do
    it 'allows to make a deposit' do
   
      account.deposit('10/01/2012', 1000)
      expect(account.balance).to eq 1000
    end
  end

  describe '#withdrawl' do
    it 'allows to make a withdrawal' do
      
      account.deposit('10/01/2012', 1000)
      account.deposit('13/01/2012', 2000)
      account.withdrawal('14/01/2012', 500)
      expect(account.balance).to eq 2500
    end
  end

    it 'should create a transaction' do
      account.deposit('10-01-2012', 1000)
      expect(fake_transaction_class).to have_received(:new).with('10-01-2012', 1000, 1000)
    end

    it 'should be recorded in the bank statment' do
      account.deposit('10/12/2012', 1000)
      expect(account.statement).to include(transaction)
    end

    it 'prints statement' do
      test = account.statement
      expect(account.print_statement).to eq test
    end

end 
