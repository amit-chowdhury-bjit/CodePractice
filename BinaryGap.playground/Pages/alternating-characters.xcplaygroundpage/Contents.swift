//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 
 https://www.hackerrank.com/challenges/alternating-characters/problem?isFullScreen=true
 
 * Complete the 'alternatingCharacters' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts STRING s as parameter.
 */



func alternatingCharacters(s: String) -> Int {
    // Write your code here

    let chracterStrings = Array(s)
    var numberOfReduce = 0
    for (index, char) in chracterStrings.enumerated() {
        if (index > 0) {
            if (chracterStrings[index-1] == char) {
                numberOfReduce += 1
            }
        }
    }
    return numberOfReduce
}


//print(alternatingCharacters(s:"AABAAB"))

print(alternatingCharacters(s:"AAAAA"))

