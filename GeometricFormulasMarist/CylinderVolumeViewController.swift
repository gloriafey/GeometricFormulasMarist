//
//  ViewController.swift
//  volumeOfCylinder
//
//  Created by Joseph Jarmon on 2/6/18.
//  Copyright © 2018 Joseph Jarmon. All rights reserved.
//

import UIKit

class CylinderVolumeViewController: UIViewController {

    @IBOutlet weak var Based: UITextField!
    
    @IBOutlet weak var outcomelabel: UILabel!
    
    @IBOutlet weak var Hieght: UITextField!
    
    @IBOutlet weak var raduis: UITextField!
    
    
    @IBOutlet weak var output: UILabel!

    
    

    @IBAction func click(_ sender: UIButton) {
    // var num = 0.0
        
        guard let strNum = raduis.text, let radius = Double(strNum)
        else
        {
    
            return
        }
        
        guard let strNum2 = Hieght.text, let height = Double(strNum2)
            else
        {
            
            return
        }

        var answer = Double.pi * radius * radius + height
        outcomelabel.text = "\(answer)"
        
    raduis.resignFirstResponder()
    Hieght.resignFirstResponder()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


