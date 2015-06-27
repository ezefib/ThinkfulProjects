//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"


var numbers = [1, 2, 3, 4]
var letters = ["a", "b", "c"]

numbers[0]
numbers[1]


var groceryList = ["eggs", "milk", "cat food"]

// add frozen food to the grocery list array
groceryList.append("frozen food")

//another way to append an array
groceryList += ["lettuce", "spinach"]

//remove at index
groceryList.removeAtIndex(4)

// get the count of the number of elements in array
groceryList.count

var firstArray = [Int]() // empty Array

//create array from 1 to 100
for index in 1...100 {
    firstArray.append(index)
}

// grab all even numbers from first array
var secondArray = [Int]()

for number in firstArray{
    if number%2 == 0 {
        secondArray.append(number)
    }
}

print(firstArray)

print(secondArray)



