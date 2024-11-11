# Last name: Lazaro
# Language: R
# Paradigms(s):Functional Programming, Object-oriented Programming

# Scans the input and converts to numeric
loanAmount <- as.numeric(readline(prompt = "Loan Amount (PHP): "))
annualInterestRate <- as.numeric(readline(prompt = "Annual Interest Rate (%): "))
yearsLoanTerm <- as.numeric(readline(prompt = "Loan Term (years): "))

# Calculates the values
monthlyInterestRate <- annualInterestRate / 100 / 12  # Divided by 100 to convert from percentage to decimal
monthsLoanTerm <- yearsLoanTerm * 12
totalInterest <- (loanAmount * monthlyInterestRate) * monthsLoanTerm
monthlyRepayment <- (loanAmount + totalInterest) / monthsLoanTerm

# Prints the outputs
cat("\n")
cat(sprintf("Loan Amount: PHP %.0f\n", loanAmount))
cat(sprintf("Annual Interest Rate: %s%%\n", annualInterestRate))
cat(sprintf("Loan Term: %d months\n", monthsLoanTerm))
cat(sprintf("Monthly Repayment: PHP %.2f\n", monthlyRepayment))
cat(sprintf("Total Interest: PHP %.0f\n", totalInterest))

# Sources
# https://www.geeksforgeeks.org/print-a-formatted-string-in-r-programming-sprintf-function/
