//
//  ViewController.swift
//  U3L1A1GrayScale
//
//  Created by Eric Sarmiento on 6/27/15.
//  Copyright (c) 2015 Eric Sarmiento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func doButton(sender: AnyObject) {
        view.backgroundColor = UIColor.purpleColor()
        print("I pressed the Button!")
    }

    //sender is the actual slider itself
    @IBAction func sliderDidChangeValue(sender: UISlider) {
        println(sender.value)
        view.backgroundColor = UIColor(white: CGFloat(sender.value), alpha: 1)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

