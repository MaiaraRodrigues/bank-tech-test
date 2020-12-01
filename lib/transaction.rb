class Transaction
  
  attr_reader :date, :credit, :debit, :balance

  def initialize(date, credit, debit, balance)
    @date = date
    @debit = debit
    @credit = credit
    @balance = balance
  end 

end 