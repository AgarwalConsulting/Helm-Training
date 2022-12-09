package main

import (
	"flag"
	"fmt"
)

func main() {
	s := flag.String("name", "World", "name to greet")
	flag.Parse()

	fmt.Printf("Hello, %s!\n", *s)
}
