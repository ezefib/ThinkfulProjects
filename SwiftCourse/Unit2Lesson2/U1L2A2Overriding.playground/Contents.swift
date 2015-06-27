//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

class Shape {
    var color:UIColor
    init(color:UIColor) {
        self.color = color
    }
    // getArea function will be overridden in Circle and Square
    
    func getArea() -> Double{
        return 0
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
    
    override func getArea() -> Double {
        var area =  M_1_PI * Double(radius^2)
        
        return area
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
    
    override func getArea() -> Double {
        var area = Double(width * width)
        
        return area
    }
}

class Rectangle:Shape
{
    //var color:UIColor
    var width:Int
    var height:Int
    init(color:UIColor, width:Int, height:Int) {
        //self.color = color
        self.width = width
        self.height = height
        
        super.init(color: color)
    }
    
    override func getArea() -> Double {
        var area = Double(width * height)
        
        return area
    }
}

var circle = Circle(color: UIColor.redColor(), radius: 50) // UIColor.redColor() creates an instance of the red color automatically; thanks Apple!
circle.color    // prints r 1.0 g 0.0 b 0.0 a 1.0
circle.getArea()


//Comprehension checks
var square = Square(color: UIColor.blueColor(), width: 100)
square.color
square.getArea()

var rectangle = Rectangle(color: UIColor.greenColor(), width: 100, height: 50)
rectangle.getArea()
rectangle.color






