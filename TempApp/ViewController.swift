//
//  ViewController.swift
//  TempApp
//
//  Created by GABRIELA AVILA on 9/1/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
//hello'
    
    @IBOutlet weak var TempTFOutlet: UITextField!
    
    @IBOutlet weak var UnitOutlet: UITextField!
    
    @IBOutlet weak var LabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TempTFOutlet.resignFirstResponder()
        UnitOutlet.resignFirstResponder()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func KButton(_ sender: UIButton) {
        if (TempTFOutlet.text == "")
        {
            LabelOutlet.text = "TRY AGAIN"
        }else
        {
            var temp = Double(TempTFOutlet.text!)
            var unit = UnitOutlet.text
            var tempN = temp
            
            if(unit == "K")
            {
                
                LabelOutlet.text = "\(tempN!)"
                
            }else if(unit == "F")
            {
                tempN = (tempN! - 32)
                tempN = tempN! * 5
                tempN = tempN! / 9
                tempN = (Double(tempN!) + 273.15)
                var roundedValue = round(tempN! * 100)/100.0
                LabelOutlet.text = "\(roundedValue)"
                
                print("Yes F")
            }else if(unit == "C")
            {
                tempN = tempN! + 273.15
                var roundedValue = round(tempN! * 100)/100.0
                LabelOutlet.text = "\(roundedValue)"
                
            }else
            {
                LabelOutlet.text = "TRY AGAIN"
            }
            
        }
        
    }
    
    @IBAction func FButton(_ sender: UIButton) {
        
            if (TempTFOutlet.text == "")
            {
                LabelOutlet.text = "TRY AGAIN"
            }else
            {
                
                var temp = Double(TempTFOutlet.text!)
                var unit = UnitOutlet.text
                var tempN = temp
                
                if(unit == "F")
                {
                    
                    LabelOutlet.text = "\(tempN!)"
                    
                }else if(unit == "C")
                {
                    tempN = tempN! * 9
                    tempN = tempN! / 5
                    tempN = (Double(tempN!) + 32)
                    var roundedValue = round(tempN! * 100)/100.0
                    LabelOutlet.text = "\(roundedValue)"
                    //print("Yes F")
                }else if(unit == "K")
                {
                    tempN = tempN! - 273.15
                    tempN = tempN! * 9
                    tempN = tempN! / 5
                    tempN = tempN! + 32
                    var roundedValue = round(tempN! * 100)/100.0
                    LabelOutlet.text = "\(roundedValue)"
                    
                }else
                {
                    LabelOutlet.text = "TRY AGAIN"
                }
                
            }
    }
    
    @IBAction func CButton(_ sender: UIButton) {
       
            if (TempTFOutlet.text == "")
            {
                LabelOutlet.text = "TRY AGAIN"
            }else
        {
                var temp = Double(TempTFOutlet.text!)
                var unit = UnitOutlet.text
                var tempN = temp
                
                if(unit == "C")
                {
                    
                    LabelOutlet.text = "\(tempN!)"
                    
                }else if(unit == "F")
                {
                    tempN = tempN! - 32
                    tempN = tempN! * 5
                    tempN = (Double(tempN!) / 9)
                    var roundedValue = round(tempN! * 100)/100.0
                    
                    LabelOutlet.text = "\(roundedValue)"
                    //print("Yes F")
                }else if(unit == "K")
                {
                    tempN = tempN! - 273.15
                    var roundedValue = round(tempN! * 100)/100.0
                    LabelOutlet.text = "\(roundedValue)"
                    
                }else
                {
                    LabelOutlet.text = "TRY AGAIN"
                }
                
            }
    }
    
    

}

