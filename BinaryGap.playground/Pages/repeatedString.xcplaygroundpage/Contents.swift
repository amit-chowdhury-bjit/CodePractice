//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 * Complete the 'repeatedString' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts following parameters:
 *  1. STRING s
 *  2. LONG_INTEGER n
 https://www.hackerrank.com/challenges/repeated-string/problem?isFullScreen=true
 */

func repeatedString(s: String, n: Int) -> Int {

    let chracterList = Array(s)
    if (s.count == 1) {
        if (s == "a") {
            return n
        }
    }
    var totalCountOfA = 0
    if (s.count > n ) {
        var index = 0
        while index < n {
            let ch = chracterList[index]
            if ("\(ch)" == "a") {
                totalCountOfA += 1
            }
            index += 1
        }
        
        return totalCountOfA
    }
    
    var numberOfA = 0
    for character in chracterList {
        if ("\(character)" == "a") {
            numberOfA += 1
        }
    }

    
    totalCountOfA = numberOfA
    let needStringConcanate = n - s.count
    if (needStringConcanate > 0) {
        let numberOfRepeat = needStringConcanate / s.count
        totalCountOfA += numberOfA * numberOfRepeat
        let remainChracter = needStringConcanate % s.count
        
        var index = 0
        while index < remainChracter {
            let ch = chracterList[index]
            if ("\(ch)" == "a") {
                totalCountOfA += 1
            }
            index += 1
        }
        print(remainChracter)
        print(needStringConcanate)
    }
    
    
    return totalCountOfA
}

/**
 INPUT
 kmretasscityylpdhuwjirnqimlkcgxubxmsxpypgzxtenweirknjtasxtvxemtwxuarabssvqdnktqadhyktagjxoanknhgilnm
 736778906400

 OUTPUT
 51574523448
 */

//print(repeatedString(s:"kmretasscityylpdhuwjirnqimlkcgxubxmsxpypgzxtenweirknjtasxtvxemtwxuarabssvqdnktqadhyktagjxoanknhgilnm", n: 736778906400))

//print(repeatedString(s:"aba", n: 10))

print(repeatedString(s:"ababa", n: 3))
