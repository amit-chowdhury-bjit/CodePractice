//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    var numberOfCount = 0;
    let totalLength = Y - X
    numberOfCount = totalLength/D
    
    let totalDistance = X + D * numberOfCount
    if ((totalDistance < Y ) && (totalLength % D > 1)) {
        numberOfCount += 1
    }
    
//    while (totalLength <= Y) {
//        totalLength = totalLength + D
//        print(totalLength)
//        numberOfCount += 1
//    }
    return numberOfCount
}



print(solution(10, 85, 30))
