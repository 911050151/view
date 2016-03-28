//
//  ViewController.swift
//  view
//
//  Created by 20131105805李建青 on 16/3/17.
//  Copyright © 2016年 20131105805李建青. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    //@IBOutlet weak var view: UILabel!
    
    @IBOutlet weak var operatorLaby: UILabel!
    //@IBOutlet weak var result: UILabel!
    @IBOutlet weak var resultLaby: UILabel!
    var operanD1:String=""
    var operanD2:String=""
    var operanD:String=""
    
    //@IBOutlet weak var abc: UILabel!
    /*
    @IBAction func add(sender: UIButton) {
        var a:Double!=0
        var b:Double!=0
        var c:Double!=0
        if(!x.text!.isEmpty){
            a=(x.text! as NSString).doubleValue
        }
        if(!y.text!.isEmpty){
            b=(y.text! as NSString).doubleValue
        }
        c=a+b
        z.text="\(c)"

        
    }
    @IBOutlet weak var z: UITextField!
    @IBOutlet weak var y: UITextField!
    @IBOutlet weak var x: UITextField!
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button(sender: UIButton) {
        var value = sender.currentTitle
        let bool_value = true
        if  value == "+"||value == "-"||value == "*"||value == "÷"||value=="%"||value == "^"
        {
            operanD = value!
            operatorLaby.text = "\(operanD)"
            return
        }
        else if value == "AC"{
            value = "0"
            operanD1 = ""
            operanD2 = ""
            operanD = ""
            resultLaby.text = "0"
            operatorLaby.text = ""
            return
        }
        else if value == "+/-"{
            if  bool_value ==  true{
                bool_value == false
            }
            else{
                bool_value == true
            }
        }
        else if value == "="{
            var result = 0
            switch operanD {
            case "+":
                result = Int(operanD1)! + Int(operanD2)!
            case "-":
                result = Int(operanD1)! - Int(operanD2)!
            case "*":
                result = Int(operanD1)! * Int(operanD2)!
            case "÷":
                result = Int(operanD1)! / Int(operanD2)!
            case "^":
                result = Int(operanD1)! ^ Int(operanD1)!
            case "%":
                result = Int(operanD1)! % Int(operanD2)!
                
            default :
                operatorLaby.text = "出错请清零"
            }
            resultLaby.text  = "\(result)"
            operatorLaby.text = ""
            operanD1 = ""
            operanD2 = ""
            operanD = ""
            
            return
        }
        if operanD   == ""{
            
            operanD1  = operanD1 + value!
            resultLaby.text = "\(operanD1)"
            return
        }
        else {
            
            operanD2  = operanD2 + value!
            resultLaby.text = "\(operanD2)"
            return
        }
    }
}

