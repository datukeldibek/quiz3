//
//  SecondViewController.swift
//  quiz
//
//  Created by Jarae on 5/3/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var usernameTf: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var numberTF: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    
    
    private func isTextFieldFilled(textField : UITextField) -> Bool {
        guard let text = textField.text else { return false }
        if text.isEmpty {
            textField.layer.borderWidth = 3
            textField.layer.borderColor = UIColor.red.cgColor
            return false
        }else{
            textField.layer.borderWidth = 0
            return true
        }
    }
    
    private func setupSubview(){
//        loginBtn.layer.cornerRadius = 16
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubview()
        
    }

    var flag = true
    @IBAction func hideBtn(_ sender: Any) {
        flag == true ? (flag = false) : (flag = true)
        passwordTf.isSecureTextEntry = flag
    }
    
    @IBAction func login(_ sender: Any) {
        if isTextFieldFilled(textField: usernameTf) && isTextFieldFilled(textField: emailTF) && isTextFieldFilled(textField: numberTF) && isTextFieldFilled(textField: passwordTf) {
            let vc = ThirdViewController()
            vc.email = emailTF.text ?? ""
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
       
}
