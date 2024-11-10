=begin
Last name: Corpuz
Language: Ruby
Paradigm(s): Object-oriented Programming, Procedural Programing, Functional Programming
=end

=begin
Method to calculate the monthly repayment and total interest based on a user input. 
=end
def calculate_loan(loan, annualInterest, loanYears)
  # Calculates the loan term in months
  loanMonths = loanYears * 12

  # calculats the monthly interest
  monthlyRate= annualInterest / 12.0 / 100.0
  
  # Calculates total interest
  totalInterest = loan * monthlyRate * loanMonths
  
  # Calculate monthly repayment
  monthlyRepayment = (loan + totalInterest) / loanMonths
  
  puts "\nLoan Amount: PHP #{'%.2f' % loan}"
  puts "Annual Interest Rate: #{annualInterest}%"
  puts "Loan Term: #{loanMonths} months"
  puts "Monthly Repayment: PHP #{'%.2f' % monthlyRepayment}"
  puts "Total Interest: PHP #{'%.2f' % totalInterest}"
end

#Prompt to get the user input
print "Enter Loan Amount (PHP): "
loan_amount = gets.chomp.to_f
print "Enter Annual Interest Rate (%): "
annual_interest_rate = gets.chomp.to_f
print "Enter Loan Term (years): "
loan_term_years = gets.chomp.to_i

#Performs the calculation
calculate_loan(loan_amount, annual_interest_rate, loan_term_years)
