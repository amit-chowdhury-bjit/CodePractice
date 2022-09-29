//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 
 Function Description
 Complete the timeInWords function in the editor below.
 timeInWords has the following parameter(s):
 int h: the hour of the day
 int m: the minutes after the hour
 Returns
 string: a time string as described
 
 * Complete the 'timeInWords' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. INTEGER h
 *  2. INTEGER m
 */

func digitToString(value:Int) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = NumberFormatter.Style.spellOut
    let str = formatter.string(for: value)!
    return str.replacingOccurrences(of: "-", with: " ")

}

func timeInWords(h: Int, m: Int) -> String {
    
    let hourString = digitToString(value: h)
    
    var minString = ""
    switch m {
    case 1 ... 30:
        if (m == 1) {
            minString = digitToString(value: m) + " minute past " + hourString
        }else if (m == 15) {
            minString = "quarter past " + hourString
        }else if (m == 30){
            minString = "half past " + hourString
        }else{
            minString = digitToString(value: m) + " minutes past " + hourString
        }
        break
    case 31 ... 60:
        if (m == 45) {
            minString = "quarter to " + digitToString(value: (h + 1))
        }else{
            var minS = " minute to "
            if ((60 - m) > 1){
                minS = " minutes to "
            }
            minString = digitToString(value: (60 - m)) + minS + digitToString(value: (h + 1))
        }
        break
    default:
        minString = hourString + " o' clock"
        print(minString)
    }
    return minString
}

//print(digitToString(value: 10))
//twenty nine minutes past seven
print(timeInWords(h:1, m: 1))

//three O' clock
