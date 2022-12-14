# author: https://github.com/AnotherGithubDude, 2022
# tested with julia 1.8.3:

# monitor for changes in the current directory
while true
    files = readdir()  # read the contents of the current directory
    sleep(1)
    new_files = readdir()
    if files != new_files  # check for any changes
        println("A change has occurred")
	#diff = new_files - files
        diff = findall(x -> x ∉ files, new_files)
        println("The following files have changed: $(diff)")
#       break
    end
end
