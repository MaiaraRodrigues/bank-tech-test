class Account

  attr_reader :balance, :statment 

  def initialize
    @balance = 0
    @statment = []
    
  end 

  def deposit(date, amount)
    @balance += amount
  end 

  def withdrawal(date, amount)
    @balance -= amount
  end 

end 
