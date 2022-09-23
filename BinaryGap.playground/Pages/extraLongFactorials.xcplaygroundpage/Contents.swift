//: [Previous](@previous)

import Foundation
import Security

var greeting = "Hello, playground"

//: [Next](@next)
/*
 * Complete the 'extraLongFactorials' function below.
 *
 * The function accepts INTEGER n as parameter.
 */

func multiplier(a: String, b: Int) -> String{
    
    let numberString = Array(a)
   // print(a)
   // print(numberString)
//    numberString.forEach({Int(String($0))! * b})
    let temp: [Int] = numberString.compactMap({Int(String($0))! * b})
   // print(b)
    //print(temp)
    var result = ""
    var remainer = 0

    for number in temp.reversed(){
        let total = number + remainer
        remainer = total / 10
        result.insert(Character(String(total % 10)), at: result.startIndex)
    }
    while remainer > 0 {
        result.insert(Character(String(remainer % 10)), at: result.startIndex)
        remainer /= 10
    }
    return result
}

func extraLongFactorials(n: Int) -> Void {
    // Write your code here
    var fact = "\(n)"
    var number = n-1
    while number > 0 {
        fact = multiplier(a:fact, b:number)
        //print(fact)
        number -= 1
    }
    
    print(fact)
}

extraLongFactorials(n:25)
//print(extraLongFactorials(n:25))
//155735145328059720814784985211430357934963132246211
//15511210043330985984000000
