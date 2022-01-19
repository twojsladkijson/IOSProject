import UIKit

class ResultViewController: UIViewControler {
    var reslabe1Title = ""

    @IBAction func recalcPressed(_ sender: UIButton){
        self.dismiss(animated: true, completion: nil)
    }
    @IBAOutLet weak var resLabe1: UILabe1!
    override func viewDidload(){
        super.viewDidload()
        resLabe1.text = reslabe1Title
    }
}
