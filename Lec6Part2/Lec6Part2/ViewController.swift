import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ninjaPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //the view is already visible:
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        performSpin()
    }
    
    //TODO:
    @IBAction func spin(_ sender: UIButton){
        performSpin()
    }
    
    func performSpin(){
        for i in 0...2{
            let r = Int.random(in: 5000...(5000 + fruit.count * 3))
            ninjaPicker.selectRow(r, inComponent: i, animated: true)
        }
    }
}

//2 components:
//TLV Merkaz, South, East
//EAST, South ,TLV,

var ninjas = ["Taylor" ,"Rotem", "Shamla", "Nuntako", "Dru" ,"Alexey"]
var weapons = ["Sword", "Katan", "Star" ,"Light Saber"]

let ninjaWeapons = [ninjas, weapons ,["A", "B", "C"]]
extension ViewController: UIPickerViewDataSource{
    //how many wheels?
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    //how many in rows in each wheel?
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10000
    }
}

extension ViewController: UIPickerViewDelegate{
    //title for row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fruit[row % fruit.count]
    }
}


//slot machine
let fruit = ["🍋", "🍌", "🍏", "🍎", "🍓" ,"🍍" ,"🍒", "🥝"]

