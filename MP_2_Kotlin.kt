fun main() {
    /*
        Last name: Punsalan
        Language: Kotlin
        Paradigm(s): Object-oriented Programming, Functional Programming
                     Procedural Programming, Imperative Programming
    */

    // reading input
    print("Loan Amount: ")
    var loanAmount = readln().toDouble() // converting to float
    print("Annual Interest Rate: ")
    var interestRate = readln().toDouble() // converting to double
    print("Loan Term: ")
    var loanTermsYear = readln().toInt() // converting to int

    // calculating values
    var monthlyInterestRate = (interestRate / 100) / 12
    var loanTermsMonth = loanTermsYear * 12
    var totalInterest = loanAmount * monthlyInterestRate * loanTermsMonth
    var monthlyRepayment = (loanAmount + totalInterest) / loanTermsMonth
    
    // printing output
    println()
    println("Loan Amount: PHP %.2f".format(loanAmount))
    println("Annual Interest Rate: $interestRate%")
    println("Loan Term: $loanTermsMonth months")
    println("Monthly Repayment: PHP %.2f".format(monthlyRepayment))
    println("Total Interest: PHP %.2f".format(totalInterest))
}