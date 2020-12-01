class Printer

  def print(statement)
    print_heading
    statement.each { |transaction| puts transaction.date + " || " + transaction.amount.to_s + " || " + transaction.balance.to_s}
  end 

  private

  def print_heading
    puts "date || credit || debit || balance"
  end

end 