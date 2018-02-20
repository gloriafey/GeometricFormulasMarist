//
//  ViewController.swift
//  PyramidFormula
//
//  Created by Daniel Wajda on 2/6/18.
//  Copyright © 2018 Daniel Wajda. All rights reserved.
//

import UIKit

class PyramidVolumeViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var pyramidPic: UIImageView!
    
    @IBOutlet weak var heightTF: UITextField!
    
    @IBOutlet weak var baseTF: UITextField!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var lengthTF: UITextField!
    
    @IBOutlet weak var widthTF: UITextField!
    
    @IBOutlet weak var baseLabel: UILabel!
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = Int(heightTF.text!)!
        let base = Int(baseTF.text!)!
        let oneThird = 3
        let result = Int(height) * Int(base) / Int(oneThird)
        
        answerLabel.text = "\(result)"
        
        
    }
    
    @IBAction func baseButton(_ sender: UIButton) {
        let length = Int(lengthTF.text!)!
        let width = Int(widthTF.text!)!
        let answer = Int(length) * Int(width)
        
        baseLabel.text = "\(answer)"
    }
    
   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
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

