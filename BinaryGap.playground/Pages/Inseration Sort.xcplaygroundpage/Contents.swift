//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func insertaionSort(a:[Int]) -> [Int] {
    
    var resultList = a
    let index = 1
    
    for index in 1..<(a.count){
        
        let value = resultList[index]
        var hole = index
        
        while (hole > 0 && (resultList[hole - 1] > value)) {
            resultList[hole] = resultList[hole - 1]
            hole -= 1
        }
        resultList[hole] = value
        print(resultList)
    }
    
    return resultList
}

print(insertaionSort(a: [2,7,4,1,5,3]))
