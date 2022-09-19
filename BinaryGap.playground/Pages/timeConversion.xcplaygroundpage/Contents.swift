//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func timeConversion(s: String) -> String {
    
    var timeFormat = "AM"
    if (!s.contains("AM")){
        timeFormat = "PM"
    }
    let replaced = s.replacingOccurrences(of: timeFormat, with: "")
    let timeList = replaced.split(separator: ":")
    let h = timeList[0]
    let hour = Int(h) ?? 0
    var hrFormat = hour

    if (timeFormat == "PM") {
        if (hour < 12) {
            hrFormat = hour + 12
        }
        let hrFormatString = String(format: "%02d", hrFormat)
        return replaced.replacingOccurrences(of: h, with: hrFormatString)
    }else {
        if (hour >= 12) {
            hrFormat = 0
        }
        let hrFormatString = String(format: "%02d", hrFormat)
        return replaced.replacingOccurrences(of: h, with: hrFormatString)
    }
}

print(timeConversion(s:"07:05:45PM"))
