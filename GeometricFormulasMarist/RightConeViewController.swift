//
//  ViewController.swift
//  JanichRightCone
//
//  Created by Samantha Janich on 2/2/18.
//  Copyright © 2018 Samantha Janich. All rights reserved.
//

import UIKit

class RightConeViewController: UIViewController {

    
    @IBOutlet weak var baseR: UITextField!
    
    //pi r^2, add to .5C x l
    
    @IBOutlet weak var circR: UITextField!
    //var circumference = circ / 2
    //2 pi r, 1/2 circ

    
    @IBOutlet weak var slantH: UITextField!
    
    //input as is, multiplied by circ
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
        if segue.identifier == "eq1Button"
        {
        let nextVC = segue.destination as! resultView
        nextVC.calculateFirst =  true
        nextVC.radius   =  Double(baseR.text!)! * Double(baseR.text!)!
            nextVC.radius = Double(baseR.text!)! * Double.pi
    
        nextVC.circumference = Double(circR.text!)! * 2
            nextVC.circumference = Double(circR.text!)! * Double.pi
        nextVC.slantHeight = Double(slantH.text!)!
        }
        if segue.identifier == "nextEqButton"
        {
            let nextVC = segue.destination as! equation2View
            //nextVC.secondViewRadius = Double(
        }
        //if let input = Double(baseR.text!)!
       
        //nextVC.circumference = circR * 2 * 3.14
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        
        guard let strNum = baseR.text, let num = Double(strNum)
            else
        {
            return
        }
        
        print(strNum)
        
    }
    
    @IBOutlet weak var calculateB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

