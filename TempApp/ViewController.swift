//
//  ViewController.swift
//  TempApp
//
//  Created by GABRIELA AVILA on 9/1/23.
//

import UIKit

class ViewController: UIViewController {
//hello'
    
    @IBOutlet weak var TempTFOutlet: UITextField!
    
    @IBOutlet weak var UnitOutlet: UITextField!
    
    @IBOutlet weak var LabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func KButton(_ sender: UIButton) {
        var temp = Int(TempTFOutlet.text!)
        var unit = UnitOutlet.text
        if(unit == "K")
        {
            LabelOutlet.text = "\(temp)"
        }else if(unit == "F")
        {
            temp = (temp! - 32) * 5
            temp = temp! / 9
            temp = temp! + 273
            
        }
    }
    
    @IBAction func FButton(_ sender: UIButton) {
    }
    
    @IBAction func CButton(_ sender: UIButton) {
    }
    
    

}

