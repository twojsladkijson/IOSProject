import UIKit

class ResultViewController: UIViewControler {
    var reslabe1Title = ""

    @IBAction func recalcPressed(_ sender: UIButton){     //конектим кнопку "Пересчитать"
        self.dismiss(animated: true, completion: nil)     //что бы это экран у нас пропар 
    }
    @IBAOutLet weak var resLabe1: UILabe1!                //конектим лейбл где будет нащ результат 
    override func viewDidload(){
        super.viewDidload()
        resLabe1.text = reslabe1Title                     //Делаем так что бы он выводил результат который к нас получился 
    }
}
