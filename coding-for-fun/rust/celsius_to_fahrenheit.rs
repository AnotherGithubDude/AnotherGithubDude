// author: https://github.com/AnotherGithubDude, 2022
// tested with rustc 1.6.5

use std::io;

fn main() {

    println!("Enter Celsius Value:");

    let mut celsius_input = String::new();

    io::stdin().read_line(&mut celsius_input)
        .expect("Error reading line");

    let celsius_input: f64 = celsius_input.trim().parse()
        .expect("Error parsing input");

    let fahrenheit_value = celsius_input * (9.0/5.0) + 32.0;

    println!("The Fahrenheit value is {}", fahrenheit_value);
}
