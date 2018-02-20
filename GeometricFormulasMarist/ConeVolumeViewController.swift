
import UIKit

class ConeVolumeViewController: UIViewController {

   
    @IBOutlet weak var RadiusTF: UITextField!
    @IBOutlet weak var HeightTF: UITextField!
    @IBOutlet weak var AnswerLabal: UILabel!
    
    @IBAction func AnswerBttn(_ sender: Any) {
        HeightParse()
        BaseParse()
        //let OneThird: Double = 1/3
        var BRAnswer: Double = 0
        //BHAnswer = Hvalue*Bvalue
        //BHAnswer =  BHAnswer/3.0
        let pi = Double.pi
        BRAnswer = Rvalue*Rvalue*pi*Hvalue/3.0
        AnswerLabal.text = "V = \(BRAnswer)"
        
        //print(pi)
        
    }
    var Rvalue: Double = 0
    var Hvalue: Double = 0
    
    func HeightParse() {
        guard let text = HeightTF.text, let number2 = Double(text) else { return } // no text
        Hvalue = number2
    }
    
    func BaseParse() {
        guard let text = RadiusTF.text, let number1 = Double(text) else { return } // no text
        Rvalue = number1
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        /*BaseTF.keyboardType = .numberPad
        HeightTF.keyboardType = .numberPad */
    }
    
    
  

}

