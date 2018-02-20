//
//  FinalResultsViewController.swift
//  OFinnMaristFormulas
//
//  Created by Colleen OFinn on 2/6/18.
//  Copyright © 2018 Colleen OFinn. All rights reserved.
//

import UIKit

class FinalResultsViewController: UIViewController {
   
    var base: Double = 0
    var half: Double = 0
    var perimeter: Double = 0
    var slantHeight: Double = 0
    var calculate = true
    
    @IBOutlet var finalAnswerLabel: UILabel!
    
    @IBOutlet var answerTextLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // print("base came over \(base)")
        
        let results = base + half * perimeter * slantHeight
       finalAnswerLabel.text = "\(results)"
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

   

}
