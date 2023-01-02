// author: https://github.com/AnotherGithubDude, 2023
// tested with: Kotlin version 1.8.0 (JRE 19.0.1)

import java.io.File
import java.util.concurrent.TimeUnit

fun main() {
    // Get the current directory as a File object
    val currentDir = File(".")

    // Create a map to store the names and sizes of the files we've already seen
    val seenFiles = mutableMapOf<String, Long>()

    // Run the file observer loop until interrupted
    while (true) {
        try {
            // Get a list of the current files in the directory
            val files = currentDir.listFiles()

            // If the list of files is not null
            if (files != null) {
                // Iterate over the list of files
                for (file in files) {
                    // If we haven't seen this file before
                    if (!seenFiles.containsKey(file.name)) {
                        // Print the file name
                        println("New file: ${file.name}")

                        // Add the file name and size to the map of seen files
                        seenFiles[file.name] = file.length()
                    } else {
                        // If the file size has changed
                        if (seenFiles[file.name] != file.length()) {
                            // Print the file name
                            println("File size changed: ${file.name}")

                            // Update the file size in the map of seen files
                            seenFiles[file.name] = file.length()
                        }
                    }
                }

                // Iterate over the map of seen files
                for (seenFile in seenFiles) {
                    // If the current file no longer exists
                    if (!files.any { it.name == seenFile.key }) {
                        // Print the file name
                        println("File deleted: ${seenFile.key}")

                        // Remove the file from the map of seen files
                        seenFiles.remove(seenFile.key)
                    }
                }
            }

            // Sleep for 10 seconds before checking the files again
            TimeUnit.SECONDS.sleep(10)
        } catch (e: InterruptedException) {
            // If the thread is interrupted, exit the loop
            break
        } catch (e: Exception) {
            // Print an error message if any other errors occur
            println("An error occurred: ${e.message}")
        }
    }
}
