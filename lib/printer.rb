class Printer

  def print(statement)
    print_heading
    statement.reverse.each { |transaction| puts transaction.date + " || " + transaction.credit.to_s + ' || ' + transaction.debit.to_s + ' || ' + transaction.balance.to_s}
  end 

  private

  def print_heading
    puts "date || credit || debit || balance"
  end

end 