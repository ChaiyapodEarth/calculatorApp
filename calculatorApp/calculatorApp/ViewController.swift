//
//  ViewController.swift
//  calculatorApp
//
//  Created by Earth on 22/4/2563 BE.
//  Copyright © 2563 Earth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var result: UILabel!

    var display = ""
    var defaultValue:Float = 0
    
    var fisrtValue:Float = 0
    var secondValue:Float = 0
    
    var operating:String = ""
    
    var performMath:Bool = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func clearButton(_ sender: Any) {
        fisrtValue = 0
        secondValue = 0
        display = ""
        result.text = "\(display)"
        performMath = false
    }
    @IBAction func divideButton(_ sender: Any) {
        if performMath == true{
            fisrtValue = defaultValue
        }
        else{
            let firstValuFloat = Float(display)
            fisrtValue = firstValuFloat!
        }
        display = ""
        result.text = ""
        operating = "/"
    }
    @IBAction func modButton(_ sender: Any) {
        if performMath == true{
            fisrtValue = defaultValue
        }
        else{
            let firstValuFloat = Float(display)
            fisrtValue = firstValuFloat!
        }
        display = ""
        result.text = ""
        operating = "%"
        
    }
    @IBAction func multiplyButton(_ sender: Any) {
        if performMath == true{
            fisrtValue = defaultValue
        }
        else{
            let firstValuFloat = Float(display)
            fisrtValue = firstValuFloat!
            }
        display = ""
        result.text = ""
        operating = "*"
    }
    @IBAction func PlusButton(_ sender: Any) {
        if performMath == true{
            fisrtValue = defaultValue
        }
        else{
            let firstValuFloat = Float(display)
            fisrtValue = firstValuFloat!
        }
        display = ""
        result.text = ""
        operating = "+"
    }
    @IBAction func minusButton(_ sender: Any) {
        
        if performMath == true{
            fisrtValue = defaultValue
        }
        else{
            let firstValuFloat = Float(display)
            fisrtValue = firstValuFloat!
        }
        display = ""
        result.text = ""
        operating = "-"
    }
    @IBAction func changeVlaurButton(_ sender: Any) {
        if performMath == true{
            fisrtValue = defaultValue

        }
        var newValue = Float(display)
        newValue! -= newValue! * 2
        display = "\(newValue!)"
        defaultValue = newValue!
        result.text = "\(newValue!.clean)"
        
    }
    @IBAction func calculateTotal(_ sender: Any) {
        let secondValueFloat = Float(display)
        secondValue = secondValueFloat!
        
        switch operating {
        case "+":
            var total = fisrtValue + secondValue
            defaultValue = total
            display = String(total)
            result.text = "\(total.clean)"
            performMath = true
        case "-":
             let total = fisrtValue - secondValue
             defaultValue = total
             display = String(total)
             result.text = "\(total.clean)"
             performMath = true
        case "*":
             let total = fisrtValue * secondValue
             defaultValue = total
             display = String(total)
             result.text = "\(total.clean)"
             performMath = true
        case "/":
            let total = fisrtValue / secondValue
            defaultValue = total
            display = String(total)
            result.text = "\(total.clean)"
            performMath = true
        case "%":
            let total = Int(fisrtValue) % Int(secondValueFloat!)
            defaultValue = Float(total)
            display = String(total)
            result.text = "\(total)"
            performMath = true
        default:
            result.text = "error"
        }
    }
    @IBAction func zeroButton(_ sender: Any) {
        display += "0"
        result.text = "\(display)"
    }
    @IBAction func dotButton(_ sender: Any) {
        display += "."
        result.text = "\(display)"
    }
    @IBAction func oneButton(_ sender: Any) {
        display += "1"
        result.text = "\(display)"
    }
    @IBAction func twoButton(_ sender: Any) {
        display += "2"
        result.text = "\(display)"
    }
    @IBAction func treeButton(_ sender: Any) {
        display += "3"
        result.text = "\(display)"
    }
    @IBAction func fourButton(_ sender: Any) {
        display += "4"
        result.text = "\(display)"
    }
    @IBAction func fiveButton(_ sender: Any) {
        display += "5"
        result.text = "\(display)"
    }
    @IBAction func sixButton(_ sender: Any) {
        display += "6"
        result.text = "\(display)"
    }
    @IBAction func sevenButton(_ sender: Any) {
        display += "7"
        result.text = "\(display)"
    }
    @IBAction func eightButton(_ sender: Any) {
        display += "8"
        result.text = "\(display)"
    }
    
    @IBAction func nineButton(_ sender: Any) {
        display += "9"
        result.text = "\(display)"
    }
}

