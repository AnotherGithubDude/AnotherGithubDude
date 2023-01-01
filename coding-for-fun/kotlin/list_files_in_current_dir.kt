// author: https://github.com/AnotherGithubDude, 2023
// tested with: Kotlin version 1.8.0 (JRE 19.0.1)
import java.io.File

fun main() {
    try {
        // Get the current directory as a File object
        val currentDir = File(".")

        // Get a list of the files in the current directory
        val files = currentDir.listFiles()

        // If the list of files is not null
        if (files != null) {
            // Sort the list of files alphabetically by their names
            val sortedFiles = files.sortedBy { it.name }

            // Print each file name to the console
            sortedFiles.forEach { println(it.name) }
        }
    } catch (e: Exception) {
        // Print an error message if any errors occur
        println("An error occurred: ${e.message}")
    }
}
