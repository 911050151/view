//
//  ViewController.swift
//  view
//
//  Created by 20131105805李建青 on 16/3/17.
//  Copyright © 2016年 20131105805李建青. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var show: UITextField!;
    var opeRand1: String = ""
    var opeRand2: String = ""
    var opeRator: String = ""
    var dianLopp=false;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func add1(sender: UIButton) {
        show.text!+="1";
    }
    @IBAction func add2(sender: UIButton) {
        show.text!+="2";
    }
    @IBAction func add3(sender: UIButton) {
        show.text!+="3";
    }
    @IBAction func add4(sender: UIButton) {
        show.text!+="4";
    }
    @IBAction func add5(sender: UIButton) {
        show.text!+="5";
    }
    @IBAction func add6(sender: UIButton) {
        show.text!+="6";
    }
    @IBAction func add7(sender: UIButton) {
        show.text!+="7";
    }
    @IBAction func add8(sender: UIButton) {
        show.text!+="8";
    }
    @IBAction func add9(sender: UIButton) {
        show.text!+="9";
    }
    @IBAction func add0(sender: UIButton) {
        show.text!+="9";
    }
    @IBAction func addDain(sender: UIButton) {
        if(!dianLopp)
        {
            show.text!+=".";
            dianLopp=true;
        }
    }
    @IBAction func delt(sender: UIButton) {
        show.text!="";
        opeRand1="";
        opeRand2="";
        dianLopp=false;
    }
    
    
    @IBAction func add(sender: UIButton) {
        setx();
        opeRator="+";
    }
    @IBAction func jian(sender: UIButton) {
        setx();
        opeRator="-";
    }
    @IBAction func cheng(sender: UIButton) {
        setx();
        opeRator="*";
    }
    @IBAction func chu(sender: UIButton) {
        setx();
        opeRator="/";
    }
    @IBAction func chu100(sender: UIButton) {
       // var result:Double=0.0;
        //result = Double(show.text!);
        
        
    }
    @IBAction func pwd(sender: UIButton) {
        //show.text!="\(pwd((Double)(show.text!)))";

    }
    @IBAction func count(sender: UIButton) {
        var result = 0.0;
        opeRand2=(show.text!);
        switch opeRator {
        case "+":
            result = Double(opeRand1)! + Double(opeRand2)!
        case "-":
            result = Double(opeRand1)! - Double(opeRand2)!
        case "*":
            result = Double(opeRand1)! * Double(opeRand2)!
        case "/":
            result = Double(opeRand1)! / Double(opeRand2)!
            
        default :
            result=0
        }
        show.text! = "\(result)"
        opeRand1 = ""
        opeRand2 = ""
        opeRator = ""
    }
    func setx(){
        opeRand1=(show.text!);
        show.text!="";
        dianLopp=false;
    }
    
}

