//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//Ref: https://www.hackerrank.com/challenges/day-of-the-programmer/problem?isFullScreen=true

func isLeapYear(_ year: Int) -> Bool {
    if (year < 1919 ) {
        if year % 4 == 0 {
           return true
        }
    }else {
        if year % 4 == 0 {
    if year % 100 == 0 && year % 400 != 0 {
        return false
    } else {
        return true
    }
}
    }
    
    return false
}

func dayOfProgrammer(year: Int) -> String {
    // Write your code here
    var feb = isLeapYear(year) ? 29:28
    if (year == 1918) {
        feb = feb - 13
    }
    let totalDays = 31 + feb + 31 + 30 + 31 + 30 + 31 + 31
    let day = 256 - totalDays
    
    return "\(day).09.\(year) "
}

//print(dayOfProgrammer(year:1800))
print(dayOfProgrammer(year:1918))

//print(dayOfProgrammer(year:2200))
