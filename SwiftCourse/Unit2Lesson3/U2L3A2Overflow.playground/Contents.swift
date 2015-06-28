// Thinkful Playground
// Thinkful.com

// Fibonacci Sequence

// By definition, the first two numbers in the Fibonacci sequence are 1 and 1, or 0 and 1, depending on the chosen starting point of the sequence, and each subsequent number is the sum of the previous two.

import UIKit

Int.max
Int.min
//Int covers unsigned integers (negative numbers)

UInt.max
UInt.min
// notice Uint went from 0 to the large number

// Int.max+Int.max // results in Overflow

Int.addWithOverflow(Int.max, 1)

UInt.addWithOverflow(UInt.max, 1)


// changed Int to UInt
class FibonacciSequence {
    
    let includesZero: Bool
    let values: [UInt]
    
    init(maxNumber: UInt, includesZero: Bool) { // only know the biggest values, not the number of iterations
        self.includesZero = includesZero
        
        if maxNumber == 0 && includesZero == false {
            values = []
        } else if maxNumber == 0 {
            values = [0]
        } else {
            
            var sequence: [UInt] = [0,1,1]
            var nextNumber: UInt = 2
            while nextNumber <= maxNumber {
                sequence.append(nextNumber)
                let lastNumber = sequence.last!
                let secondToLastNumber = sequence[sequence.count-2]
                
                let (sum, didOverflow) = UInt.addWithOverflow(lastNumber, secondToLastNumber)
                
                if didOverflow == true {
                    println("MaxNumber Overflow! The next number is too big to store in a UInt!")
                    break
                }
                nextNumber = sum
            }
            if includesZero == false {
                sequence.removeAtIndex(0)
            }
            values = sequence
        }
        
    }
    
    init(numberOfItemsInSequence: UInt, includesZero: Bool) { // we know how many iterations
        self.includesZero = includesZero
        
        if numberOfItemsInSequence == 0 {
            values = []
        } else if numberOfItemsInSequence == 1 {
            if includesZero == true {
                values = [0]
            } else {
                values = [1]
            }
        } else {
            var sequence: [UInt]
            if includesZero == true {
                sequence = [0,1]
            } else {
                sequence = [1,1]
            }
            for var i:UInt = 2; i < numberOfItemsInSequence; i++ {
                let lastNumber = sequence.last! // get the last value in the array
                let secondToLastNumber = sequence[sequence.count-2] // get 2nd to last value
                let (nextNumber, didOverflow) = UInt.addWithOverflow(lastNumber, secondToLastNumber)
                if didOverflow == true {
                    println("Number of Items Overflow! The next number is too big to store in a UInt!")
                    break
                }
                
                sequence.append(nextNumber)
            }
            values = sequence
        }
    }
    
}

let fibanocciSequence = FibonacciSequence(maxNumber:UInt.max, includesZero: false)
fibanocciSequence.values

let anotherSequence = FibonacciSequence(numberOfItemsInSequence: 93, includesZero: true)
print(anotherSequence.values)



