//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 * Complete the 'minimumNumber' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. STRING password
 */

func minimumNumber(n: Int, password: String) -> Int {
    // Return the minimum number of characters to make the password strong

    let numbers = "0123456789"
    let lower_case = "abcdefghijklmnopqrstuvwxyz"
    let upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let special_characters = "!@#$%^&*()-+"
    
    var missing = 0

    let digitsCharacters = CharacterSet(charactersIn: numbers)
    let decimalRange = password.rangeOfCharacter(from: digitsCharacters)
    if decimalRange == nil {
        missing += 1
    }
   
    
    let lowerCaseCharacters = CharacterSet(charactersIn: lower_case)
    if (password.rangeOfCharacter(from: lowerCaseCharacters) == nil) {
        missing += 1
    }
    
    let upperCaseCharacters = CharacterSet(charactersIn: upper_case)
    
    if (password.rangeOfCharacter(from: upperCaseCharacters) == nil) {
        missing += 1
    }
    
    let specialCaseCharacters = CharacterSet(charactersIn: special_characters)
    
    if (password.rangeOfCharacter(from: specialCaseCharacters) == nil) {
        missing += 1
    }
    
    if ((missing + n) < 6) {
        missing += 6 - (missing + n)
    }
        
    return missing
}


print(minimumNumber(n:3, password:"#Ha"))
