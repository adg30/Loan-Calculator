fun main() {
    /*
        Last name: Punsalan
        Language: Kotlin
        Paradigm(s): Object-oriented Programming, 
                     Functional Programming,
                     Procedural Programming, 
                     Imperative Programming
    */

    // reading input
    print("Loan Amount: ")
    var loanAmount = readln().toDouble()
    print("Annual Interest Rate: ")
    var annualRate = readln().toDouble()
    print("Loan Term: ")
    var termsYear = readln().toInt()

    // calculating values
    var monthlyRate = (annualRate / 100) / 12
    var termsMonth = termsYear * 12
    var totalInterest = loanAmount * monthlyRate * termsMonth
    var monthlyRepayment = (loanAmount + totalInterest) / termsMonth
    
    // printing output
    println()
    println("Loan Amount: PHP %.2f".format(loanAmount))
    println("Annual Interest Rate: $annualRate%")
    println("Loan Term: $termsMonth months")
    println("Monthly Repayment: PHP %.2f".format(monthlyRepayment))
    println("Total Interest: PHP %.2f".format(totalInterest))
}