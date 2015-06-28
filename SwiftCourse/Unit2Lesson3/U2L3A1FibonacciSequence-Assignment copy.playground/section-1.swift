// Thinkful Playground
// Thinkful.com

// Fibonacci Sequence

// By definition, the first two numbers in the Fibonacci sequence are 1 and 1, or 0 and 1, depending on the chosen starting point of the sequence, and each subsequent number is the sum of the previous two.

import UIKit

class FibonacciSequence {
    
    let includesZero: Bool
    let values: [Int]
    
    init(maxNumber: Int, includesZero: Bool) { // only know the biggest values, not the number of iterations
        self.includesZero = includesZero
        
        if maxNumber == 0 && includesZero == false {
            values = []
        } else if maxNumber == 0 {
            values = [0]
        } else {
            var sequence = [0,1,1]
            var nextNumber = 2
            while nextNumber <= maxNumber { // evaluates the value to be less than maxNumber
                sequence.append(nextNumber)
                let lastNumber = sequence.last! // get the last value in the array
                let secondToLastNumber = sequence[sequence.count-2] // get 2nd to last value
                nextNumber = secondToLastNumber + lastNumber // add them together
            }
            
            if includesZero == false {
                sequence.removeAtIndex(0)
            }
            values = sequence
        }
        
    }
    
    init(numberOfItemsInSequence: Int, includesZero: Bool) { // we know how many iterations
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
            var sequence: [Int]
            if includesZero == true {
                sequence = [0,1]
            } else {
                sequence = [1,1]
            }
            for var i = 2; i < numberOfItemsInSequence; i++ {
                let lastNumber = sequence.last! // get the last value in the array
                let secondToLastNumber = sequence[sequence.count-2] // get 2nd to last value
                let nextNumber = secondToLastNumber + lastNumber // add them together
                sequence.append(nextNumber)
            }
            values = sequence
        }
    }
    
}

let fibanocciSequence = FibonacciSequence(maxNumber:12345, includesZero: false)
fibanocciSequence.values

let anotherSequence = FibonacciSequence(numberOfItemsInSequence: 13, includesZero: true)
anotherSequence.values

Int.max

