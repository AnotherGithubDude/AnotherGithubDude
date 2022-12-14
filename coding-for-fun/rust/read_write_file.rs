// author:  https://github.com/AnotherGithubDude, 2022
// compiled with: rustc read_write_file.rs (rustc 1.65.0)
use std::fs;
use std::io;
use std::path::Path;

fn main() -> io::Result<()> {
    // Check if the file exists
    let path = Path::new("username.txt");
    if path.exists() {
        // Read from the file
        let username = fs::read_to_string(path)?;
        println!("The username read from the file is: {}", username);
    } else {
        // Ask the user for a username
        println!("Please enter a username:");
        let mut username = String::new();
        io::stdin().read_line(&mut username)?;

        // Create the file and write the username to it
        fs::write(path, username)?;
    }

    Ok(())
}
