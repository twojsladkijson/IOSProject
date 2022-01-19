import UIKit


class ViewController: UIViewController {
    var tip = 0.0 
    var poepleCount = 2
    var billtotal = ""

    @IBAction func tipButtonsPressed (_ sender: UIButton ){
        textField.endediting (true)
        zeroButton.isSelected = false
        tenButton.isSelected = false 
        twentybutton.isSelected = false 

        sender.isSelected = true 

        let title = String(sender.currentTitle!)

        let tip = double (title.droplast())!/100
        print (tip)
        self.tip = tip 
    }
    @IBAction func stepperChanger (_ sender: UIStepper){
        peopleCountLabe1.text = String (format: "%.0f", sender.value)
        self.poepleCount = int(string(format: "%.0f", sender.value))!
    }

    @IBAction func calcPressed (_ sender: UIButton){
        let res = String(double (textField.text!)! * (1+self.tip) / double(poepleCount))
        billtotal = res

        perFormSegue (withIdentifier: "goRes", sender: self)
        print(res)

    }

    override func prepare (for segue: UIStoryboardSegue, sender: Any?){
        if segue. withIdentifier == "goRes"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.reslabe1Title = billtotal
        }
    }

    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var peopleCountLabe1: UILabe1!
    @IBOutlet weak var TenButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    override func viewDidload(){
        super. viewDidload()
    }
}
