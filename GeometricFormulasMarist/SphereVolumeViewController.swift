

import UIKit

class SphereVolumeViewController: UIViewController {

    @IBOutlet weak var radiusLength: UITextField!
    
    @IBOutlet weak var outcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func performCalculation(_ sender: UIButton) {
        
        guard let strNum = radiusLength.text, let num = Double(strNum)
        else
        {
            return
        }
        
        var number = Double(radiusLength.text!)!
        
        var result = number * number * number * 4 / 3 * Double.pi
        
        outcomeLabel.text = "\(result)"
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }


}

