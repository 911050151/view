//
//  ViewController.swift
//  view
//
//  Created by 20131105805李建青 on 16/3/17.
//  Copyright © 2016年 20131105805李建青. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var opeRatorLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    //@IBAction func opeRatorLabel(sender: AnyObject) {
    //}
    //@IBAction func resultLabel(sender: ) {
    ///
    //}
   // @IBOutlet weak var opeRatorLabel: UILabel!
   // @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button(sender: UIButton) {
        var opeRand1: String = ""
        var opeRand2: String = ""
        var opeRator: String = ""
        //var result: String=""
        //print("opeRand2=\(opeRand2)")
        var value = sender.currentTitle
        let bool_value = true
        if  value == "+"||value == "-"||value == "×"||value == "÷"||value == "%"||value == "^"
        {
            opeRator = value!
            opeRatorLabel.text = "\(opeRator)"
            return
        }
        else if value == "AC"{
            value = "0"
            opeRand1 = ""
            opeRand2 = ""
            opeRator = ""
            resultLabel.text = "0"
            opeRatorLabel.text = ""
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
            switch opeRator {
            case "+":
                result = Int(opeRand1)! + Int(opeRand2)!
            case "-":
                result = Int(opeRand1)! - Int(opeRand2)!
            case "×":
                result = Int(opeRand1)! * Int(opeRand2)!
            case "÷":
                result = Int(opeRand1)! / Int(opeRand2)!
            case "%":
                result = Int(opeRand1)! % Int(opeRand2)!
            case "^":
                result = Int(opeRand1)! ^ Int(opeRand1)!
                
            default :
                opeRatorLabel.text = "出错请清零"
            }
            resultLabel.text  = "\(result)"
            opeRatorLabel.text = ""
            opeRand1 = ""
            opeRand2 = ""
            opeRator = ""
            
            return
        }
        if opeRator   == ""{
            
            opeRand1  = opeRand1 + value!
            opeRatorLabel.text = "\(opeRand1)"
            //resultLabel.text = "\(result)"
            return
        }
        else {
            
            opeRand2  = opeRand2 + value!
            opeRatorLabel.text = "\(opeRand2)"
            //esultLabel.text = "\(result)"
            return
        }
    }
}
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

