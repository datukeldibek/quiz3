//
//  ThirdViewController.swift
//  quiz
//
//  Created by Jarae on 5/3/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var emailTF: UITextField!
    
    var email: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTF.text = email
        
    }
}
