//
//  ViewController.swift
//  Sandro Giorgishvili 13
//
//  Created by TBC on 05.07.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpButton.makeButtonCornerRounded()
        logInButton.makeButtonCornerRounded()
        
        titleLabel.text = "Matrix"
        infoLabel.text = "You take the blue pill - the story ends, you wake up in your bed and believe whatever you want to believe. "
    }
}

internal extension UIButton {
    func makeButtonCornerRounded() {
        self.layer.cornerRadius = 15.0
    }
}
