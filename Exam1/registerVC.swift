//
//  registerVC.swift
//  Exam1
//
//  Created by Kevin Lathidadiya on 03/09/21.
//

import UIKit

class registerVC: UIViewController {
    
    private let welcomeText : UILabel = {
        let lable = UILabel()
        lable.text = "Please Register Here"
        lable.textAlignment = .center
        lable.textColor = .red
        return lable
    }()
    
    private let userName : UITextField = {
        let textfiled = UITextField()
        textfiled.placeholder = "Enter User Name"
        textfiled.layer.cornerRadius = 20
        textfiled.textAlignment = .center
        return textfiled
    }()
    
    private let password : UITextField = {
        let textfiled = UITextField()
        textfiled.placeholder = "Enter User Password"
        textfiled.layer.cornerRadius = 20
        textfiled.textAlignment = .center
        textfiled.isSecureTextEntry = true
        return textfiled
    }()
    
    private let register : UIButton = {
        let button = UIButton()
        button.setTitle("Register Now", for: .normal)
        button.addTarget(self, action: #selector(handelRegister), for: .touchUpInside)
        button.layer.cornerRadius = 20
        button.backgroundColor = .systemGreen
        return button
    }()
    
    @objc func handelRegister(){
        if( userName.text! != "" && password.text! != "" ){
            UserDefaults.standard.set(userName.text, forKey: "Email")
            UserDefaults.standard.set(password.text, forKey: "Password")
            let vc = ViewController()
            navigationController?.pushViewController(vc, animated: true)
        }else{
            let alert = UIAlertController(title: "Alert", message: "Please Enter Detail", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray
        view.addSubview(welcomeText)
        view.addSubview(userName)
        view.addSubview(password)
        view.addSubview(register)
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        welcomeText.frame = CGRect(x: 20, y: 100, width: view.width - 40, height: 40)
        userName.frame = CGRect(x: 20, y: welcomeText.bottom + 40, width: view.width - 40, height: 40)
        password.frame = CGRect(x: 20, y: userName.bottom + 20, width: view.width - 40, height: 40)
        register.frame = CGRect(x: 20, y: password.bottom + 40, width: view.width - 40, height: 40)
    }
}
