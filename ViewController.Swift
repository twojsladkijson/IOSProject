import UIKit


class ViewController: UIViewController {
    var tip = 0.0                                                  //переводим % в числа
    var poepleCount = 2                                            //изначальное значение в кол-во людей
    var billtotal = ""                                             //число которые мы будем выводить

    @IBAction func tipButtonsPressed (_ sender: UIButton ){        //Подключили все кнопочки 
        textField.endediting (true)                                //Делаем так что бЫ клавиатура была спрятана после того как ввели кол-во людей
        zeroButton.isSelected = false                              //все кнопки что бЫ не были выбраны
        tenButton.isSelected = false                               //все кнопки что бЫ не были выбраны
        twentybutton.isSelected = false                            //все кнопки что бЫ не были выбраны

        sender.isSelected = true                                   //Меняет цвет если вЫбрана кнопка

        let title = String(sender.currentTitle!)                   //будем получать значение

        let tip = double (title.droplast())!/100                   //считает значение
        print (tip)
        self.tip = tip 
    }
    @IBAction func stepperChanger (_ sender: UIStepper){                   //конектим + и - где прибавляем и отнимам количесво друзей 
        peopleCountLabe1.text = String (format: "%.0f", sender.value)      //Прибавляет или отнимает количество людей 
        self.poepleCount = int(string(format: "%.0f", sender.value))!
    }

    @IBAction func calcPressed (_ sender: UIButton){                                      //конектим кнопку "Посчитать"
        let res = String(double (textField.text!)! * (1+self.tip) / double(poepleCount))  //Будем считать сколько нужно каждому заплатить в ресторане
        billtotal = res
 
        perFormSegue (withIdentifier: "goRes", sender: self)                              //Делает переход на другой экран
        print(res)

    }

    override func prepare (for segue: UIStoryboardSegue, sender: Any?){                   // функция которая перекидывает значение на другой экран 
        if segue. withIdentifier == "goRes"{
            let destinationVC = segue.destination as! ResultViewController                //Получаем доступ к значению 
            destinationVC.reslabe1Title = billtotal                                       //Значение которіе вЫводиться
        }
    }

    @IBOutlet weak var twentyButton: UIButton!    //конектим кнопку где у нас 20%
    @IBOutlet weak var peopleCountLabe1: UILabe1! //конектим кнопку где у нас показывает количесво людей 
    @IBOutlet weak var TenButton: UIButton!       //конектим кнопку где у нас 10%
    @IBOutlet weak var zeroButton: UIButton!      //конектив кномпу где у нас 0%
    @IBOutlet weak var textField: UITextField!    //конектим строку где мы будем вводить текст 
    override func viewDidload(){
        super. viewDidload()
    }
}
