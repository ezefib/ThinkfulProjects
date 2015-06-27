//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

class Shape {
    var color:UIColor
    init(color:UIColor) {
        self.color = color
    }
}

class Circle: Shape {
    //var color:UIColor
    var radius:Int
    init(color:UIColor, radius:Int) {
        
        //self.color = color
        self.radius = radius
        //Using Baseclass Shape to get color
        super.init(color: color)
        
        
    }
}


class Square: Shape {
    //var color:UIColor
    var width:Int
    init(color:UIColor, width:Int) {
        //self.color = color
        self.width = width
        
        super.init(color: color)
        
    }
}

var circle = Circle(color: UIColor.redColor(), radius: 50) // UIColor.redColor() creates an instance of the red color automatically; thanks Apple!
circle.color    // prints r 1.0 g 0.0 b 0.0 a 1.0

//Comprehension checks
var square = Square(color: UIColor.blueColor(), width: 100)
square.color




