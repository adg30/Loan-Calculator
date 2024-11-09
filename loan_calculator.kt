fun main() {
    /*
        Last name: Punsalan
        Language: Kotlin
        Paradigm(s): 
    */

    // reading input
    print("Loan Amount: ")
    var loanAmount = readln()
                    .replace("PHP", "") // removing any "PHP" 
                    .replace(",", "") // removing any commas
                    .trim() // removing any trailing spaces
                    .toFloat() // converting to float
    print("Annual Interest Rate: ")
    var interestRate = readln()
                        .replace("%", "") // removing any percentage signs
                        .trim() // removing any trailing spaces
                        .toFloat() // converting to float
                        interestRate /= 100 // converting percentage to decimal
    print("Loan Term: ")
    var loanTermsYear = readln()
                        .replace("years", "") // removing any "years"
                        .trim() // removing any trailing spaces
                        .toInt() // converting to int

    // calculating values
    var monthlyInterestRate = interestRate / 12
    var loanTermsMonth = loanTermsYear * 12
    var totalInterest = loanAmount * monthlyInterestRate * loanTermsMonth
    var monthlyRepayment = (loanAmount + totalInterest) / loanTermsMonth
    
    // printing output
    println()
    println("Loan Amount: PHP %.2f".format(loanAmount))
    println("Annual Interest Rate: %.2f%%".format(interestRate * 100))
    println("Loan Term: $loanTermsMonth months")
    println("Monthly Repayment: PHP %.2f".format(monthlyRepayment))
    println("Total Interest: PHP %.2f".format(totalInterest))
}