//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 * Complete the 'migratoryBirds' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 // https://stackoverflow.com/questions/30545518/how-to-count-occurrences-of-an-element-in-a-swift-array
 */

func migratoryBirds(arr: [Int]) -> Int {
    
    var counts: [Int: Int] = [:]
    
    for item in arr {
        counts[item] = (counts[item] ?? 0) + 1
    }
    var resultList:[Int] = [Int]()
    var keyList:[Int] = [Int]()
    for (key, value) in counts {
        resultList.append(value)
        keyList.append(key)
    }
    
   // print(resultList.max() ?? 0)
    
    let maxValue = resultList.max() ?? 0
    
    var birds:[Int] = [Int]()
    
    for (key, value) in counts {
        if (value == maxValue) {
            birds.append(key)
        }
    }

    return birds.min() ?? 0
}


//print(migratoryBirds(arr: [1,4, 4, 4, 5, 3]))
//1 2 3 4 5 4 3 2 1 3 4
print(migratoryBirds(arr: [1,2,3,4,5,4,3,2,1,3,4]))
