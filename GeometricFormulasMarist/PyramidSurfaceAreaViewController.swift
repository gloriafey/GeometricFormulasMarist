//
//  ViewController.swift
//  OFinnMaristFormulas
//
//  Created by Colleen OFinn on 2/2/18.
//  Copyright © 2018 Colleen OFinn. All rights reserved.
//

import UIKit

class PyramidSurfaceAreaViewController: UIViewController, UITextFieldDelegate {

   
   
    @IBOutlet var baseTF: UITextField!
    @IBOutlet var halfTF: UITextField!
    @IBOutlet var perimeterTF: UITextField!
    @IBOutlet var slantHeightTF: UITextField!
    
    @IBOutlet var plusLabel: UILabel!
    @IBOutlet var halfLabel: UILabel!
    @IBOutlet var multiplyLabel: UILabel!
    @IBOutlet var multiplyTwoLabel: UILabel!
    
    
    @IBOutlet var calculatePressed: UIButton!
    @IBAction func calculateButton(_ sender: UIButton) {
        guard let strNum = baseTF.text, let num = Double(strNum)
            else
        {
            return
        }
        var num1 = String(baseTF.text!)
        var num2 = String(halfTF.text!)
        var num3 = String(perimeterTF.text!)
        var num4 = String(slantHeightTF.text!)
        var answers = 0
        
    
        //var valueBase = baseTF.text!
        //var valuePerimeter = perimeterTF.text!
       // var valueHeight = slantHeightTF.text!
        
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
       let nextVC =  segue.destination as! FinalResultsViewController
        var firstValue = Double(baseTF.text!)!
        let secondValule = Double(halfTF.text!)!
        var thirdValue = Double(perimeterTF.text!)!
        var fourthValue = Double(slantHeightTF.text!)!
        nextVC.base = firstValue
        nextVC.half = secondValule
        nextVC.perimeter = thirdValue
        nextVC.slantHeight = fourthValue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.slantHeightTF.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        slantHeightTF.resignFirstResponder()
        return (true)
    }
}

