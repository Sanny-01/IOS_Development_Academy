//
//  ViewController2.swift
//  Sandro Giorgishvili 13
//
//  Created by TBC on 05.07.22.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var saveChangesButton: UIButton!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveChangesButton.makeButtonCornerRounded()
        usernameField.addUnderlineToTextField()
        emailField.addUnderlineToTextField()
        passwordField.addUnderlineToTextField()
        locationField.addUnderlineToTextField()
    }
}

extension UIView {
    func addUnderlineToTextField() {
        let bottomLine = CALayer()
        bottomLine.backgroundColor = UIColor.black.cgColor
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height, width: self.frame.size.width - 35, height: 1)
        
        self.layer.addSublayer(bottomLine)
    }
}
