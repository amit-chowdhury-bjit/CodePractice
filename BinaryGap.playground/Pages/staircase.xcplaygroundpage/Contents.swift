//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"
//Ref: https://www.hackerrank.com/challenges/staircase/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen


//: [Next](@next)
func staircase(n: Int) -> Void {
    // Write your code here
    var index = 0
    while index < n {
        print(String(repeating: " ", count: (n-(index + 1))) + String(repeating: "#", count:index+1))
        index += 1
    }
}


staircase(n:4)
