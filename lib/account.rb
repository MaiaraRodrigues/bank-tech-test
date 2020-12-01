require './lib/transaction'

class Account
  DEFAULT_BALANCE = 0

  attr_reader :balance, :statement 

  def initialize(transaction_class: Transaction)
    @balance = DEFAULT_BALANCE
    @statement = []
    @transaction_class = transaction_class
    
  end 

  def deposit(date, amount)
    @balance += amount
    create_transaction(date, amount, @balance)
  end 

  def withdrawal(date, amount)
    @balance -= amount
  end 

  private

  def create_transaction(date, amount, balance)
    transaction = @transaction_class.new(date, amount, balance)
    @statement << transaction
  end

end 
