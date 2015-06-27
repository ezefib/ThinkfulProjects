//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

//Go to View > Assistant Editor > Show Assistant Editor

let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))

XCPShowView("This is the title!", view)


let view2 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
view2.backgroundColor = UIColor.redColor()

//Comprehension Check
view.addSubview(view2)