//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func angryProfessor(k: Int, a: [Int]) -> String {
    // Write your code here
    var studentAttendOnTime = 0
    
    for time in a {
        if (time <= 0) {
            studentAttendOnTime += 1
        }
    }
    if (k > studentAttendOnTime) {
        return "YES"
    }else {
        return "NO"
    }
}


