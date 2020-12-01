require 'account'

describe 'Account' do

  describe '#initialize' do
    it 'starts with a balance of 0' do
      account = Account.new

      expect(account.balance).to eq 0
    end
  end
  
  describe '#deposit' do
    it 'allows to make a deposit' do
      account = Account.new
      account.deposit('10/12/2012', 1000)
      expect(account.balance).to eq 1000
    end
  end

end 
