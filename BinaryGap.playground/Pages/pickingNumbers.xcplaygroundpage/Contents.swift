//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 * Complete the 'pickingNumbers' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY a as parameter.
 */

func pickingNumbers(a: [Int]) -> Int {
//    var index = 0
//    var filterList = [Int]()
//    while index < a.count {
//        let firstValue = a[index]
//        let nextIndex = index + 1
//        if (nextIndex < a.count) {
//            let nextValue = a[nextIndex]
//            let difference = abs(firstValue - nextValue)
//            //print(difference)
//            if (difference >= 0 && difference < 2) {
//                print("match")
//                filterList.append(<#T##Element#>)
//            }
//        }
//        index = nextIndex
//    }
//
//    print(list)
//
    return 0
}

//print(pickingNumbers(a:[6,4,6, 5, 3, 3, 1]))


func hackerrankInString(s: String) -> String {
    // Write your code here
    let hackerrank = ["h", "a", "c", "k", "e", "r", "r", "a", "n", "k"]
    
    var chracterList = Array(s)
    var j = 0
    var index = 0
    for value in hackerrank {
        while index < chracterList.count {
            if ("\(chracterList[index])" == value) {
                print(chracterList[j])
                j +=  1
                index += 1
                break
            }
            index += 1
        }
    }
    
    print(j)
    
    return hackerrank.count == j ? "YES" : "NO"
}

print(hackerrankInString(s:"hereiamstackerrank"))
//print(hackerrankInString(s:"happyWorld"))
//rhbaasdndfsdskgbfefdbrsdfhuyatrjtcrtyytktjjt

//print(hackerrankInString(s:"rhbaasdndfsdskgbfefdbrsdfhuyatrjtcrtyytktjjt"))

