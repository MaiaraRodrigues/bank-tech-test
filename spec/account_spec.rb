require './lib/account'

describe 'Account' do
  let(:account) { Account.new(transaction_class: fake_transaction_class, printer_class: fake_printer_class) }
  let(:fake_transaction_class) { double(:fake_transaction_class, new: transaction) }
  let(:transaction) { double(:transaction, date: '10/01/2012', credit: '', debit: '1000', balance: '1000') }
  let(:fake_printer_class) { double(:fake_printer_class, new: printer) }
  let(:printer) { double(:printer, print_format: transaction) }

  describe '#initialize' do
    it 'starts with a balance of 0' do

      expect(account.balance).to eq 0
    end

    it 'has an statement array' do
      expect(account.statement).to eq []
    end
  end

  describe '#withdraw' do
    before do
      account.deposit('10/01/2012', 1000)
      account.deposit('13/01/2012', 2000)
      account.withdraw('14/01/2012', 500) 
    end

    it 'allows to make a withdraw' do
      expect(account.balance).to eq 2500
    end

    it 'creates a transaction with a debit value' do
      expect(fake_transaction_class).to have_received(:new).with('14/01/2012', nil, 500, 2500)
    end
  end

  describe '#deposit' do
    before do
      account.deposit('10/01/2012', 1000)
    end

    it 'allows to make a deposit' do
      expect(account.balance).to eq 1000
    end

    it 'creates a transaction with credit value' do
      expect(fake_transaction_class).to have_received(:new).with('10/01/2012', 1000, nil, 1000)
    end

    it 'records a transaction in the bank statment' do
      expect(account.statement).to include(transaction)
    end
  end 

  describe '#print_statement' do
    it 'sends a message to the the printer to print the bank statement' do
      account.deposit('10/01/2012', 1000)
      account.print_statement
      expect(fake_printer_class).to have_received(:new)
    end
  end 
  
  describe 'when the bank account bank balance is 0' do
    it 'raise an error if the user tries to withdraw' do
      allow(account).to receive(:balance) { 0 }
      expect { account.withdraw('15-01-2012', 500) }.to raise_error 'Insufficient funds'
    end
  end
end 
