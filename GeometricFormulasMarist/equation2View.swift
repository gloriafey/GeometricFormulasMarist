//
//  equation2View.swift
//  JanichRightCone
//
//  Created by Samantha Janich on 2/13/18.
//  Copyright © 2018 Samantha Janich. All rights reserved.
//

import UIKit

class equation2View: UIViewController {

    @IBOutlet weak var secondViewRadius: UITextField!
    
    @IBOutlet weak var secondViewSlantHeight: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let nextVC = segue.destination as! resultView
        nextVC.radius2 = Double(secondViewRadius.text!)! * Double(secondViewRadius.text!)! * Double.pi
        nextVC.calculateFirst = false
        nextVC.slantHeight2 = Double(secondViewSlantHeight.text!)! * Double.pi * Double(secondViewRadius.text!)!
        
    }
    

    
    

    
    @IBAction func secondViewCalculate(_ sender: Any) {
        guard let strNum = secondViewRadius.text, let num = Double(strNum)
            else {
                return
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
