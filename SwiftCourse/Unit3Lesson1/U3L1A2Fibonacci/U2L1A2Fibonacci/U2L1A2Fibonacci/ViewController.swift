//
//  ViewController.swift
//  U2L1A2Fibonacci
//
//  Created by Eric Sarmiento on 6/27/15.
//  Copyright (c) 2015 Eric Sarmiento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //var fibonacciSequnce = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var switchButton: UISwitch!
    @IBOutlet weak var includeZeroLabel: UILabel!
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.updateFibonacciSequence() // update view
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateFibonacciSequence(){
        
//        if switchButton.on { // update includeZero Label
//            numberOfItemsSlider.maximumValue = 94
//        }
//        else{
//            numberOfItemsSlider.maximumValue = 93
//        }
        
        
        numberOfItemsSlider.maximumValue = switchButton.on ? 94: 93
        
        var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt64(numberOfItemsSlider.value), includesZero: switchButton.on)
        
        //print(fibonacciSequence.values)
        
        textView.text = fibonacciSequence.values.description // updateTextView
        
        numberOfItemsLabel.text = String(UInt(numberOfItemsSlider.value)) // update numberOfItemsLabel
        
//        if switchButton.on { // update includeZero Label
//            includeZeroLabel.text = "YES"
//        }
//        else{
//            includeZeroLabel.text = "NO"
//        }
        
        // ternary conditional operator
        includeZeroLabel.text = switchButton.on ? "YES" : "NO"
        
        
        
    }


}

