// author: https://github.com/AnotherGithubDude, 2022
// compiled with: rustc hello_world.rs (rustc 1.65.0)
// parts generated by:
// https://beta.openai.com/playground/p/default-chat
use std::fs;
use std::time::{Duration, SystemTime};

fn main() {
    let mut before = SystemTime::now();

    loop {
        let paths = fs::read_dir("./").unwrap();
  
        for path in paths {
            let entry = path.unwrap();

            // Get the last modification time of the file and compare it to the current time
            match entry.metadata() {
                Ok(metadata) => {
                    let after = SystemTime::now();
                    let difference = after.duration_since(before).unwrap();

                    if difference.as_secs() >= 10 {
                        if metadata.modified().unwrap() > before {
                            println!("{} has changed!", entry.file_name().to_string_lossy());
                        }
                    }
                },
                Err(_) => (),
            }
        }

        // Reset the before time
        before = SystemTime::now();

        // Wait 10 seconds until checking again
        std::thread::sleep(Duration::from_secs(10));
    }
}
