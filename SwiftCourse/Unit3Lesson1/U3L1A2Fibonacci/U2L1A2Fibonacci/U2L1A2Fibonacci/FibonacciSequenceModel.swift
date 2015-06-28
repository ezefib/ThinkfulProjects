//
//  FibonacciSequenceModel.swift
//  U2L1A2Fibonacci
//
//  Created by Eric Sarmiento on 6/27/15.
//  Copyright (c) 2015 Eric Sarmiento. All rights reserved.
//
//  Copied from Fibonacci Sequence Playground
import Foundation


class FibonacciSequence {
    
    let includesZero: Bool
    let values: [UInt64]
    
    init(maxNumber: UInt64, includesZero: Bool) { // only know the biggest values, not the number of iterations
        self.includesZero = includesZero
        
        if maxNumber == 0 && includesZero == false {
            values = []
        } else if maxNumber == 0 {
            values = [0]
        } else {
            
            var sequence: [UInt64] = [0,1,1]
            var nextNumber: UInt64 = 2
            while nextNumber <= maxNumber {
                sequence.append(nextNumber)
                let lastNumber = sequence.last!
                let secondToLastNumber = sequence[sequence.count-2]
                
                let (sum, didOverflow) = UInt64.addWithOverflow(lastNumber, secondToLastNumber)
                
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
    
    init(numberOfItemsInSequence: UInt64, includesZero: Bool) { // we know how many iterations
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
            var sequence: [UInt64]
            if includesZero == true {
                sequence = [0,1]
            } else {
                sequence = [1,1]
            }
            for var i = 2; i < Int(numberOfItemsInSequence); i++ {
                let lastNumber = sequence.last! // get the last value in the array
                let secondToLastNumber = sequence[sequence.count-2] // get 2nd to last value
                //let nextNumber = lastNumber + secondToLastNumber
                let (nextNumber, didOverflow) = UInt64.addWithOverflow(lastNumber, secondToLastNumber)
                
                if didOverflow == true {
                    println("Number of Items Overflow! The next number is too big to store in a UInt!" + String(i))
                    break
                }
                
                sequence.append(nextNumber)
            }
            values = sequence
        }
    }
    
}