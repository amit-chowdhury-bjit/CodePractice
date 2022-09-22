//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// https://www.hackerrank.com/challenges/30-review-loop/problem?h_r=email&isFullScreen=true&unlock_token=72f21b281af32d86dfac54b5f46ead1e2682ee90&utm_campaign=tutorials&utm_medium=email&utm_source=daily_reminder


func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
   // Print the even-indexed characters
    for (i, chr) in string.enumerated() {
        guard i % 2 == 0 else { continue }
        print(chr, terminator: "")
    }

    // Print a space
    print(" ", terminator: "")

    // Print the odd-indexed characters
    for (i, chr) in string.enumerated() {
        guard i % 2 != 0 else { continue }
        print(chr, terminator: "")
    }

    // Print a newline
    print()
}

print(printEvenAndOdd(string:"Hacker"))
