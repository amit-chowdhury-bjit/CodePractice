//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/**
 Given two positive integers  and  where  is lower than , write a program to print the modified Kaprekar numbers in the range between  and , inclusive. If no modified Kaprekar numbers exist in the given range, print INVALID RANGE.
 
 Function Description
 Complete the kaprekarNumbers function in the editor below.
 kaprekarNumbers has the following parameter(s):
 int p: the lower limit
 int q: the upper limit
 Prints
 It should print the list of modified Kaprekar numbers, space-separated on one line and in ascending order. If no modified Kaprekar numbers exist in the given range, print INVALID RANGE. No return value is required.
 Input Format
 The first line contains the lower integer limit .
 The second line contains the upper integer limit .
 Note: Your range should be inclusive of the limits.
 */

func isKapreka(p:Int)->Bool {
    
    if (p == 1){
        return true
    }
        
    let squareRoot = String(p*p)
    let stringChracter = Array(squareRoot)
    var firstPart = ""
    var seconrdPart = ""
    var index = 0
    let length = stringChracter.count
    while index < length {
        if (index < length/2) {
            firstPart += String(stringChracter[index])
        }else {
            seconrdPart += String(stringChracter[index])
        }
        index += 1
    }
    let fInt:Int = Int(firstPart) ?? 0
    let sInt:Int = Int(seconrdPart) ?? 0
    
    let twoPartSum = fInt + sInt
    if (p == twoPartSum) {
        return true
    }
    return  false
}

func kaprekarNumbers(p: Int, q: Int) -> Void {
    // Write your code here
    
    var result = ""
   
    for i in p...q{
        if (isKapreka(p:i)){
            result += String(i)
            result += " "
        }
    }
    
    if (result.count > 0) {
        print(result)
    }else{
        print("INVALID RANGE ")
    }
}

//kaprekarNumbers(p:400, q:700) print("NVALID RANGE")


kaprekarNumbers(p:400, q:700)
