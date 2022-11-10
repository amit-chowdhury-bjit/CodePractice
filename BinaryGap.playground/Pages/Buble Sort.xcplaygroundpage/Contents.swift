//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


func bubleSort(a:[Int]) -> [Int] {
    
    var resultList = a
    
    let index = 0
    let k = 1
    for k in 1..<a.count {
       var flag = false
        for index in 0...(a.count - k - 1) {
            if (resultList[index] > resultList[index + 1]) {
                let temp = resultList[index]
                resultList[index] = resultList[index + 1]
                resultList[index + 1] = temp
                flag = true
            }
        }
        if (!flag) {
            break
        }
        print(k)
    }
        
    return resultList
}

print(bubleSort(a: [2,7,4,1,5,3]))
