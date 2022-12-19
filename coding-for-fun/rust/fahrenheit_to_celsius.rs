// author: https://github.com/AnotherGithubDude, 2022
// tested with rustc 1.6.5

use std::io;

fn main() {

    println!("Enter Fahrenheit Value:");

    let mut fahrenheit_input = String::new();

    io::stdin().read_line(&mut fahrenheit_input)
        .expect("Error reading line");

    let fahrenheit_input: f64 = fahrenheit_input.trim().parse()
        .expect("Error parsing input");

    let celsius_value = (fahrenheit_input - 32.0) * (5.0/9.0);

    println!("The Celsius value is {}", celsius_value);
}
