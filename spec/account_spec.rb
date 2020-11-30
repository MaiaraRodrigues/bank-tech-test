require 'account'

describe 'Account' do
  describe '#initialize' do
    it 'starts with a balance of 0' do
      account = Account.new

      expect(account.balance).to eq 0
    end
  end
end 
