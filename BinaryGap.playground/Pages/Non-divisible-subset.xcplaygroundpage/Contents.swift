//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


/*
 
 Function Description
 Complete the nonDivisibleSubset function in the editor below.
 nonDivisibleSubset has the following parameter(s):
 int S[n]: an array of integers
 int k: the divisor
 
 * Complete the 'nonDivisibleSubset' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER k
 *  2. INTEGER_ARRAY s
 */

func checkDivisable(index: Int, s: [Int], k:Int) -> Bool {
    var divisable = true
    if (index+1) == s.count {
        return divisable
    }

    for j in (index+1)...(s.count-1) {
        let sum = s[index] + s[j]
        if (sum % k == 0) {
            divisable = false
        }else {
            return true
        }
    }
    return divisable
}

func nonDivisibleSubset(k: Int, s: [Int]) -> Int {
    guard !s.isEmpty, k > 0 else {
        return 0
    }
    
    var values: [Int: Int] = [:]
    var result = 0
    
        // Find how many times a given reminder occurs
    s.forEach { value in
        values[value % k] = (values[value % k] ?? 0) + 1
    }
    
        // Compare occurence counts of complementary reminders and choose one reminder that has more occurences.
        //e.g.: if you add one number with reminder 2 and one with reminder 4 to the result set for divisor 6, it will produce a reminder of 0 and will create a evenly divisible sum. So one of the set of numbers cannot occur in the result. Same goes for 1 and 5 for divisor 6. We can however add numbers with reminders 2 and 1 as their sum will not produce reminder 0 (so it would not be divisible by 6).
    (1..<(k / 2 + k % 2)).forEach { index in
        let value1 = values[index] ?? 0
        let value2 = values[k - index] ?? 0
        
        result += max(value1, value2)
    }
    
        // If we find that our divisor is even and there are values with reminder k / 2, then we can add additional number to the result set that will not produce any evenly divided sum with any other previously added number. But we can only add one. Additional numbers will produce evenly divided sums between themselves (e.g. for divisor 6 if we will have 3 and 9 it will create an evenly divided sum)
      if k % 2 == 0, (values[k / 2] ?? 0) > 0 {
        result += 1
    }
    
        // If there is a number that is multplier of divider in input set we can add one of those to the result. Same as before we can only add one
    if (values[0] ?? 0) > 0 {
        result += 1
    }
    
    return result
}


//func nonDivisibleSubset(k: Int, s: [Int]) -> Int {
//    // Write your code here
//
//    var result:[Int] = [Int] ()
//    let length = s.count - 1
//
//    for i in 0...length {
//        if (checkDivisable(index: i, s: s, k: k)) {
//            result.append(s[i])
//        }
//
//    }
//    return result.count
//}

print(nonDivisibleSubset(k:3, s:[1,7,2,4]))

