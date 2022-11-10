//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func biggerIsGreater(w: String) -> String {
    // Write your code here
    
    var letterStrings = Array(w)
    //print(letterStrings)
    var i = letterStrings.count - 1
 //Step1
 while i > 1 {
     let kIO = letterStrings[i - 1]
     let KI = letterStrings[i]
     
     if (kIO < KI) {
         break
     }
     i -= 1
 }
 //print(i)
 var j = letterStrings.count - 1
 // Step2
 while j > 1 {
     let KIO = letterStrings[i-1]
     let Kj = letterStrings[j]
     
     if (KIO < Kj) {
         //print(Kj)
         break
     }
     j -= 1
 }
    
// Step 3
 //print(j)
 let temp = letterStrings[i-1]
 letterStrings[i-1] = letterStrings[j]
 letterStrings[j] = temp
    
 //Step4
 //print(letterStrings)
 var reverseorder:[Character] = [Character]()
 var k = (letterStrings.count - 1 )
 while k >= i {
     print(k)
     print(letterStrings[k])
     reverseorder.append(letterStrings[k])
     k -= 1
 }
 
 k = 0
 while i < (letterStrings.count ) {
     letterStrings[i] = reverseorder[k]
     i += 1
     k += 1
 }
 
 let str = String(letterStrings)
 
 if (w < str) {
     return str
 }
 return "no answer"

}
