# Last name: Lazaro
# Language: R
# Paradigms(s):

# Scans the input, removes non-numeric characters, and only keeps the numerical value
loanAmount <- as.numeric(gsub("[^0-9.]", "", readline(prompt = "Loan Amount: ")))
annualInterestRate <- as.numeric(gsub("[^0-9.]", "", readline(prompt = "Annual Interest Rate: ")))
yearsLoanTerm <- as.numeric(gsub("[^0-9.]", "", readline(prompt = "Loan Term: ")))

# Calculates the values
monthlyInterestRate <- annualInterestRate / 12 / 100 # Divided by 100 to convert from percentage to decimal
monthsLoanTerm <- yearsLoanTerm * 12
totalInterest <- (loanAmount * monthlyInterestRate) * monthsLoanTerm
monthlyRepayment <- (loanAmount + totalInterest) / monthsLoanTerm

# Prints the outputs
# Format conventions: 
#   round: Rounds off value to two decimal places
#   big.mark: Inserts comma as thousands separator
#   scientific: Ensures the value is not in scientific format
cat("\n")
cat("Loan Amount: PHP", format(round(loanAmount, 2), big.mark = ",", scientific = FALSE), "\n")
cat("Annual Interest Rate:", format(annualInterestRate, scientific = FALSE), "%\n")
cat("Loan Term:", format(monthsLoanTerm, scientific = FALSE), "months\n")
cat("Monthly Repayment: PHP", format(round(monthlyRepayment, 2), big.mark = ",", scientific = FALSE), "\n")
cat("Total Interest: PHP", format(round(totalInterest, 2), big.mark = ",", scientific = FALSE), "\n")