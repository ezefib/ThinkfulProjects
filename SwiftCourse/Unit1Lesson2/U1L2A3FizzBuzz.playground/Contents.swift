//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

// let is reference to a constant
let Fizz = "Fizz"
let Buzz = "Buzz"

// notation to print variables
println("\(Fizz)")
println("\(Buzz)")
print("\(Fizz) \(Buzz)\n")

// identify the return type of the function "->"
func checkValue(numberToCheck: Int) -> String{
    var valueToReturn = ""
    
    if ((numberToCheck%3 == 0) && (numberToCheck%5 == 0)) {
        valueToReturn = "FizzBuzz"
    } //Condition where mod numberToCheck both divides by 3 and 5
        
    else if (numberToCheck % 3 == 0){
        valueToReturn = Fizz
    } //condtition of where numberToCheck divisible by 3
        
    else if (numberToCheck % 5 == 0){
        valueToReturn = Buzz
    } //condtition of where numberToCheck divisible by 5
        
    else{// condition for numberToCheck
        
        valueToReturn = String(numberToCheck)
    }
    
    return valueToReturn
}

for var counter = 1; counter<=100; ++counter{
    
    println(checkValue(counter)) // defined by function above
    
    
}