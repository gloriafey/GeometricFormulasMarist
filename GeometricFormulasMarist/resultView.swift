//
//  resultView.swift
//  JanichRightCone
//
//  Created by Samantha Janich on 2/6/18.
//  Copyright © 2018 Samantha Janich. All rights reserved.
//

import UIKit

class resultView: UIViewController {

    var radius: Double = 0
    var circumference: Double = 0
    var slantHeight: Double = 0
    var calculateFirst = true
    //var result: Double = 0
    var radius2: Double = 0
    var slantHeight2: Double = 0
    
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBOutlet weak var gifImage: UIImageView!
    let gifURL : String = "http://www.gifbin.com/bin/4802swswsw04.gif"

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if calculateFirst
        {
            var answerCirc = circumference / 2
            var answer = radius + answerCirc + slantHeight
            answerLabel.text = "\(answer)"
        }
        else
        {
            var otherAnswer = radius2 + slantHeight2
            answerLabel.text = "\(otherAnswer)"
        }
        /*
        let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as? resultView
        self.navigationController?.pushViewController(vc2!, animated: true)
*/
        
      //
       
 
 
        
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
