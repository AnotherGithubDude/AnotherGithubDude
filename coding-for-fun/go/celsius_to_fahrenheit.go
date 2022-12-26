package main
import "fmt"
// author: https://github.com/AnotherGithubDude, 2022
// tested with: go1.19.4

func main() {
// Prompt user to input the Celsius value from command-line
fmt.Println("Please enter the temperature in Celsius (23.5, 30.0):\t")
var c_input float64
_, err := fmt.Scanf("%f", &c_input)
if err != nil {
	fmt.Println(err)
}

// Convert the Celsius input to Fahrenheit and save the result
pre_result := c_input
result := (pre_result * 1.8) + 32

// Print the result as output on the terminal 
fmt.Println("The temperature in Fahrenheit is: ", result)
}
