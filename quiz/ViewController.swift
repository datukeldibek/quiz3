//
//  ViewController.swift
//  quiz
//
//  Created by Jarae on 5/3/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var siginBtn: UIButton!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
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
        siginBtn.layer.cornerRadius = 16
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubview()
    }
    @IBAction func login(_ sender: Any) {
        if isTextFieldFilled(textField: emailTF) && isTextFieldFilled(textField: passwordTF) {
            print("success!")
        }
    }
    
    var flag = true
    @IBAction func hideBtn(_ sender: Any) {
        flag == true ? (flag = false) : (flag = true)
        passwordTF.isSecureTextEntry = flag
    }
    @IBAction func forgotPassword(_ sender: Any) {
        let vc = ThirdViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func signup(_ sender: Any) {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

