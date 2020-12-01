class Account

  attr_reader :balance

  def initialize
    @balance = 0
    
  end 

  def deposit(date, amount)
    @balance += amount
  end 

  def withdrawal(date, amount)
    @balance -= amount
  end 

end 
