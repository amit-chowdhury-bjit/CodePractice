import UIKit

let num = 6
let str = String(num, radix: 2)
print(str) // prints "10110"

let chracters = Array(str)
print(chracters)
var numbersOfOne = 0
var numbersOfZero = 0
var binaryGapIndex = 0
var binaryGaps = [Int]()
binaryGaps.append(0)


for (index, binaryNumber) in chracters.enumerated() {
    if (((index == 0) && (index + 1) < chracters.count) && (binaryNumber == "1")) {
        print("1 have in first index")
    }else {
        if (binaryNumber == "0") {
            binaryGaps[binaryGapIndex] += 1
        }else if (binaryNumber == "1") {
            binaryGapIndex += 1
            binaryGaps.append(0)
            print("found")
        }
    }
    
}

if ((binaryGaps.count == 1)) {
    print("gap is zero")
}

print(binaryGaps)

print(binaryGaps.max() ?? 0)
print(binaryGaps.count)
