//
//  ViewController.swift
//  Sandro Giorgishvili 11
//
//  Created by sgiorgishvili on 30.06.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button.layer.cornerRadius = 25.0
        fourthLabel.layer.cornerRadius = 10
        fourthLabel.layer.masksToBounds = true
        
        firstLabel.text = "\(round(Float.random(in: slider.minimumValue...slider.value)))"
        secondLabel.text = "\(round(Float.random(in: slider.minimumValue...slider.value)))"
        thirdLabel.text = "\(round(Float.random(in: slider.minimumValue...slider.value)))"
    }

    @IBAction func firstSLider(_ sender: UISlider) {
        firstLabel.text = "\(round(Float.random(in: sender.minimumValue...sender.value)))"
        secondLabel.text = "\(round(Float.random(in: sender.minimumValue...sender.value)))"
        thirdLabel.text = "\(round(Float.random(in: sender.minimumValue...sender.value)))"
    }
    
    func getLabelValues() -> [Double] {
        var arrayOfNums = [String]()
        arrayOfNums.append((firstLabel.text!))
        arrayOfNums.append((secondLabel.text!))
        arrayOfNums.append((thirdLabel.text!))
        
        return arrayOfNums.compactMap{Double($0)}
    }
    
    func getMaxFromLabels() -> [Double] {
      let arrayOfNums = getLabelValues()
        
        let sortedNums = arrayOfNums.sorted{$0 > $1}
        let maxNums = sortedNums.filter{$0 == sortedNums.first}
        
        return maxNums
    }

    
    @IBAction func calculate(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor == UIColor.green ? UIColor.link : UIColor.green
        
        switch firstTextField.text {
        case "maximum", "Maximum":
            let maxNums = getMaxFromLabels()
            
            switch maxNums.count {
            case 1:
                fourthLabel.text = "There is only one maximum \(maxNums.first!)"
            case 2:
                fourthLabel.text = "There are two maximums \(maxNums.first!)"
            case 3:
                fourthLabel.text = "There are three  maximums \(maxNums.first!)"
            default:
                fourthLabel.text = "Could not get max value"
            }
        case "average", "Average":
            let arrayOfNums = getLabelValues()
            fourthLabel.text = "Average is \(round( (arrayOfNums.reduce(0,+) / Double(arrayOfNums.count) * 100 )) / 100 )"
        case "sum", "Sum":
            fourthLabel.text = "Sum is \(getLabelValues().reduce(0,+))"
        default:
            fourthLabel.text = "Please type maximum,average or sum"
        }
    }
}
