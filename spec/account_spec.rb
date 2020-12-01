require 'account'

describe 'Account' do
  let(:account) { Account.new }
  

  describe '#initialize' do
    it 'starts with a balance of 0' do

      expect(account.balance).to eq 0
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

end 
