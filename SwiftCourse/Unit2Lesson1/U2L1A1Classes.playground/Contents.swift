//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

//var name = "Peter"
//var gender = "Male"
//var profession = "Software Developer"
//var location = "New York City"

class Person {
    var name: String
    var gender: String
    var profession: String
    var location: String
    var age: Int
    var partner: Person? // Person optional
    
    init(name:String, gender:String, profession:String, location:String, age:Int){
        self.name = name
        self.gender = gender
        self.profession = profession
        self.location = location
        self.age = age
    }
    
    init(name: String) {
        self.name = name
        self.gender = "Unknown"
        self.profession = "Unknown"
        self.location = "Unknown"
        self.age = 0
    }
    
    init(profession: String) {
        self.profession = profession
        self.name = "Unknown"
        self.gender = "Unknown"
        self.location = "Unknown"
        self.age = 0
    }
    
    func createRelationship(partner:Person){
        self.partner = partner
    }
    
    func displayRelationshipMessage() {
        if partner != nil {
            println("\(name) is in a relationship with \(partner!.name)") // need to unwrap the optional
        }
        else{
            println("\(name) is single")
        }
    }
}

var peter = Person(name: "Peter", gender: "Male", profession: "Software Developer", location: "New York City", age:34)
var amy = Person(name: "Amy", gender: "Female", profession: "Professor", location: "San Francisco", age:26)

let jonny = Person(name: "Jonny")


//Unit 2 Lesson 1 Assignment 3
// create relationship
peter.createRelationship(amy)

peter.displayRelationshipMessage()

jonny.displayRelationshipMessage()




