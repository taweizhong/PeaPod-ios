//
//  LoginController.swift
//  peapod
//
//  Created by 他维忠 on 2023/5/19.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var hintTF: UILabel!
    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        let username = usernameTF.text
        let password = passwordTF.text
        if username == "admin" && password == "123456"{
            SceneDelegate.shared.toHome()
            Token.setLogin(true)
        }else{
            hintTF.text = "密码或用户名错误"
        }
        
    }
}
