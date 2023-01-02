// author: https://github.com/AnotherGithubDude, 2023
// tested with: Kotlin version 1.8.0 (JRE 19.0.1)

import java.util.Scanner

fun main(args: Array<String>) {
    val scanner = Scanner(System.`in`)
    println("Enter 1 to convert from Celsius to Fahrenheit")
    println("Enter 2 to convert from Fahrenheit to Celsius")
    val choice = scanner.nextInt()
    if (choice == 1) {
        println("Enter the temperature in Celsius:")
        val celsius = scanner.nextDouble()
        val fahrenheit = celsius * 9 / 5 + 32
        println("$celsius Celsius is equal to $fahrenheit Fahrenheit")
    } else if (choice == 2) {
        println("Enter the temperature in Fahrenheit:")
        val fahrenheit = scanner.nextDouble()
        val celsius = (fahrenheit - 32) * 5 / 9
        println("$fahrenheit Fahrenheit is equal to $celsius Celsius")
    } else {
        println("Invalid choice")
    }
}
