// author: https://github.com/AnotherGithubDude, 2022
// tested with: go1.19.4
package main

import (
	"fmt"
	"log"
        "io/ioutil"
	"sort"
	"time"
)

func main() {

	// Print the current time in hours, minutes, seconds
	t := time.Now()
	fmt.Println("The current time is:", t.Format("3:04:05 PM"))

	// List the files of the current folder, each per line, sorted alphabetically
	files, err := ioutil.ReadDir("./")
	if err != nil {
		log.Fatal(err)
	}
	sort.Slice(files, func(i, j int) bool {
		return files[i].Name() < files[j].Name()
	})
	for _, file := range files {
		fmt.Println(file.Name())
	}
}
