//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

var letter = "z"

switch letter {
    case "a" , "e", "i", "o", "u":
        print("\(letter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s","t","v","w","x","y","z":
        print("\(letter) is constanant")
    default:
        print(" '\(letter)' I don't know what this is")
}
