package main
import "fmt"
// author: https://github.com/AnotherGithubDude, 2022
// tested with: go1.19.4

func main() {
// Prompt user to input the Fahrenheit value from command-line
fmt.Println("Please enter the temperature in Fahrenheit (73.4, 86.0):\t")
var f_input float64
_, err := fmt.Scanf("%f", &f_input)
if err != nil {
	fmt.Println(err)
}

// Convert the Fahrenheit input to Celsius and save the result
pre_result := f_input
result := (pre_result - 32) / 1.8

// Print the result as output on the terminal 
fmt.Println("The temperature in Celsius is: ", result)
}
