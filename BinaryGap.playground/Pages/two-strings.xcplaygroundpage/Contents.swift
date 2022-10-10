//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//https://www.hackerrank.com/challenges/two-strings/problem?isFullScreen=true
/*
 * Complete the 'twoStrings' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. STRING s1
 *  2. STRING s2
 */

func twoStrings(s1: String, s2: String) -> String {
    // Write your code here
        
    let s1Characters = CharacterSet(charactersIn: s1)

    if (s2.rangeOfCharacter(from: s1Characters) == nil) {
        return "NO"
    }
    
    return "YES"
}

print(twoStrings(s1: "hi", s2: "world"))
