//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 * Complete the 'findMedian' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func findMedian(arr: [Int]) -> Int {
    // Write your code here
    let list = arr.sorted()
    
    let middleoftheObject = list.count/2
    
    if ((list.count % 2 == 1)) {
        return list[middleoftheObject]
    }else{
        return (list[middleoftheObject] + list[middleoftheObject-1])/2
    }
}


//print(findMedian(arr:[1,2,3,4,5,6,7,8]))

for i in 1...10 {
    print ("In \(i)")
    defer { print ("Deferred \(i)") }
    print ("Out \(i)")
}


var choice = 2
 
// Switch statement
switch(choice) {
case 1:
print("Hi! its Monday")
case 2:
print("Hi! its Tuesday")
    choice = 5

    fallthrough

case 3:
print("Hi! its Wednesday")
    fallthrough
case 4:
print("Hi! its Thursday")
    fallthrough
case 5:
print("Hi! its Friday")
    fallthrough
case 6:
print("Hi! its Saturday")
case 7:
print("Hi! its Sunday")
default:
print("Choice not found")
}

//func sumFromOne(upto n: Int) -> Int {
//  (1...n).reduce(0, +)
//}

func sumFromOne(upto n: Int) -> Int {
  (n + 1) * n / 2
}
print(sumFromOne(upto: 10000))

var scores: [String: Int] = ["Eric": 9, "Mark": 12, "Wayne": 1]

scores["andrew"] = 0

print(scores)


var bag: Set<String> = ["Candy", "Juice", "Gummy"]
//bag.insert("Candies")
print(bag.insert("Candies"))
print(bag.insert("Candies"))
print(bag) // prints ["Candy", "Juice", "Gummy"

