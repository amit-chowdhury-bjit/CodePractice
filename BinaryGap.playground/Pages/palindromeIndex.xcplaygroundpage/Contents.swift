//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
https://www.hackerrank.com/challenges/palindrome-index/problem?isFullScreen=true
 * Complete the 'palindromeIndex' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts STRING s as parameter.
 */

func checkPalindrome(s:String) -> Int {
    let chracterStrings = Array(s)
    var index = 0
    var reverseIndex = chracterStrings.count - 1
    
    while index < chracterStrings.count {
        
        if (chracterStrings[index] == chracterStrings[reverseIndex]) {
            return index
        }
        
        index += 1
        reverseIndex -= 1
    }
    
    return 0
}

func palindromeIndex(s: String) -> Int {
    
    let reversedWord = String(s.reversed())
    let chracterStrings = Array(s)
    let reverseList = Array(chracterStrings.reversed())
    var index = 0
    var reverseIndex = chracterStrings.count - 1
    
    if (s == reversedWord) {
        return -1
    }else {
        
        
        while index < chracterStrings.count {
            

            let missmatchValue = reverseList[reverseIndex]
            
            if (chracterStrings[index] != chracterStrings[reverseIndex]) {
//                print(reverseIndex)
                if (index < reverseIndex) {
                    return index
                }else {
                    return reverseIndex
                }
            }
            index += 1
            reverseIndex -= 1
        }
    }
    
    
    
    return -1
}

//baa

//print(palindromeIndex(s: "baa"))

print(palindromeIndex(s: "aaab"))
