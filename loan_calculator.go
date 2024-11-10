package main

/*

Last name: Go
Language: Go
Paradigm(s): Procedural Programming

*/
import (
	"fmt"
)

func main() {
	// Input: Loan amount, annual interest rate, loan term in years
	var loanAmount float64
	var annualInterestRate float64
	var loanTermYears int

	fmt.Print("Enter Loan Amount (PHP): ")
	fmt.Scan(&loanAmount)
	fmt.Print("Enter Annual Interest Rate (%): ")
	fmt.Scan(&annualInterestRate)
	fmt.Print("Enter Loan Term (years): ")
	fmt.Scan(&loanTermYears)

	// Calculate monthly interest rate and loan term in months
	monthlyInterestRate := annualInterestRate / 12 / 100 //divide by 100 to turn decimal
	loanTermMonths := loanTermYears * 12

	// Calculate total interest and monthly repayment
	totalInterest := loanAmount * monthlyInterestRate * float64(loanTermMonths) //go doesn't allow implicit type connversions, so type casting is required  (loanTermMonths will end up as int)
	monthlyRepayment := (loanAmount + totalInterest) / float64(loanTermMonths)

	// Output the results
	fmt.Println("\nLoan Details:")
	fmt.Printf("Loan Amount: PHP %.2f\n", loanAmount)
	fmt.Printf("Annual Interest Rate: %.2f%%\n", annualInterestRate)
	fmt.Printf("Loan Term: %d months\n", loanTermMonths)
	fmt.Printf("Monthly Repayment: PHP %.2f\n", monthlyRepayment)
	fmt.Printf("Total Interest: PHP %.2f\n", totalInterest)
}
