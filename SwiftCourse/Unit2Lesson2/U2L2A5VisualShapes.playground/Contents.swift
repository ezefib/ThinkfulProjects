//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

//Go to View > Assistant Editor > Show Assistant Editor

class Shape:UIView { // make Shape subclass of UIView
    var color:UIColor
    init(color:UIColor) {
        self.color = color
        super.init(frame: CGRectZero)
        self.backgroundColor = color
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getArea() -> Double{
        return 0
    }
    

}

class Circle: Shape {
    //var color:UIColor
    var radius:Int
    init(color:UIColor, radius:Int) {
        
        self.radius = radius
        //Using Baseclass Shape to get color
        super.init(color: color)
        
        self.frame.size = CGSize(width: radius * 2, height: radius * 2)
        self.layer.cornerRadius = CGFloat(radius)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getArea() -> Double {
        var area =  M_1_PI * Double(radius^2)
        
        return area
    }
}


class Square: Shape {
    
    var width:Int
    init(color:UIColor, width:Int) {
       
        self.width = width
        super.init(color: color)
        
        self.frame.size = CGSize(width: width, height: width)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        self.frame.size = CGSize(width: width, height: height)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getArea() -> Double {
        var area = Double(width * height)
        
        return area
    }
}

// for the comprehension check
class RoundedRect: Shape {
    
    var width:Int
    var height:Int
    var radius: Int
    init(color:UIColor, width:Int, height:Int, radius: Int) {
        
        self.width = width
        self.height = height
        self.radius = radius
        
        super.init(color: color)
        
        self.frame.size = CGSize(width:width, height: height)
        self.layer.cornerRadius = CGFloat(radius) // for the corner radius of the rect
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override func getArea() -> Double {
//        var area = Double(width * height)
//        
//        return area
//    }
    
}

var circle = Circle(color: UIColor.blueColor(), radius: 50)
var square = Square(color: UIColor.redColor(), width: 100)
var rectangle = Rectangle(color: UIColor.greenColor(), width: 100, height: 250)
var roundedrect = RoundedRect(color: UIColor.yellowColor(), width: 20, height: 50, radius: 5)

circle.center = CGPoint(x: 100, y: 100)
square.center = CGPoint(x: 200, y: 200)
rectangle.center = CGPoint(x: 300, y: 0)
roundedrect.center = CGPoint(x: 20, y: 50)

let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
XCPShowView("Shapes!", view)


view.addSubview(circle)
view.addSubview(square)
view.addSubview(rectangle)
view.addSubview(roundedrect)
