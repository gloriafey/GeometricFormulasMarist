//
//  ViewController.swift
//  Sphere
//
//  Created by Lucas Barrett on 2/6/18.
//  Copyright © 2018 Lucas Barrett. All rights reserved.
//

import UIKit

class SphereViewController: UIViewController {
    var square:Double = 0.0
    //var num:Double = 0.0
    var ans = 0.0
    @IBOutlet weak var Answer: UILabel!
    @IBOutlet weak var R: UITextField!
    @IBAction func click(_ sender: UIButton) {
    //    var num = 0.0
       
        guard let strNum  = R.text, let num = Double(strNum)
        else
         {
            
            return
        }
        
        //print(strNum)
        square = num * num
        ans = 4 * Double.pi * square
        Answer.text = String(ans)
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

