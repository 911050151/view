//
//  ViewController.swift
//  view
//
//  Created by 20131105805李建青 on 16/3/17.
//  Copyright © 2016年 20131105805李建青. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    var opeRand1: String = ""
    var opeRand2: String = ""
    var opeRator: String = ""
    
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
        print(value)
        if  value == "+"||value == "-"||value == "*"||value == "/"||value == "%"||value == "^"
        {
            opeRator = value!
            
        }
        else if value == "="{
            var result = 0
            switch opeRator {
            case "+":
                result = Int(opeRand1)! + Int(opeRand2)!
            case "-":
                result = Int(opeRand1)! - Int(opeRand2)!
            case "*":
                result = Int(opeRand1)! * Int(opeRand2)!
            case "/":
                result = Int(opeRand1)! / Int(opeRand2)!
            case "%":
                result = Int(opeRand1)! % Int(opeRand2)!
            case "^":
                result = Int(opeRand1)! ^ Int(opeRand1)!
                
            default :
                result=0
            }
                resultLabel.text = "\(result)"
                opeRand1 = ""
                opeRand2 = ""
                opeRator = ""
            
            }

        else if value == "AC"{
            value = "0"
            opeRand1 = ""
            opeRand2 = ""
            opeRator = ""
            resultLabel.text = ""
            
        }
         if opeRator == ""{
            
            opeRand1  = opeRand1 + value!
            resultLabel.text = "\(opeRand1)"
        
        }
        else {
            
            opeRand2  = opeRand2 + value!
            resultLabel.text = "\(opeRand2)"
            
        }
    }
}

