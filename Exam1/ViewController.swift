//
//  ViewController.swift
//  Exam1
//
//  Created by Kevin Lathidadiya on 03/09/21.
//

import UIKit

class ViewController: UIViewController {

    private let welcomeText : UILabel = {
        let lable = UILabel()
        lable.text = "Welcome To The My App"
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
    
    private let logIn : UIButton = {
        let button = UIButton()
        button.setTitle("LogIn", for: .normal)
        button.addTarget(self, action: #selector(handelLogIn), for: .touchUpInside)
        button.layer.cornerRadius = 20
        button.backgroundColor = .systemGreen
        return button
    }()
    
    var username:String = UserDefaults.standard.string(forKey: "Email")!
    var passwords:String = UserDefaults.standard.string(forKey: "Password")!
    @objc func handelLogIn(){
        if( userName.text! == username  && password.text! == passwords){
            UserDefaults.standard.set(username, forKey: "email")
            let vc = detailsVC()
            navigationController?.pushViewController(vc, animated: true)
        }else{
            let alert = UIAlertController(title: "Alert", message: "UserName And Passwoord Are Incorrect..!", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    
    private let register : UIButton = {
        let button = UIButton()
        button.setTitle("Register", for: .normal)
        button.addTarget(self, action: #selector(handelRegister), for: .touchUpInside)
        button.layer.cornerRadius = 20
        button.backgroundColor = .systemGreen
        return button
    }()
    
    @objc func handelRegister(){
        let vc = registerVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray
        view.addSubview(welcomeText)
        view.addSubview(userName)
        view.addSubview(password)
        view.addSubview(logIn)
        view.addSubview(register)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        welcomeText.frame = CGRect(x: 20, y: 100, width: view.width - 40, height: 40)
        userName.frame = CGRect(x: 20, y: welcomeText.bottom + 40, width: view.width - 40, height: 40)
        password.frame = CGRect(x: 20, y: userName.bottom + 20, width: view.width - 40, height: 40)
        logIn.frame = CGRect(x: 20, y: password.bottom + 20, width: view.width - 40, height: 40)
        register.frame = CGRect(x: 20, y: logIn.bottom + 20, width: view.width - 40, height: 40)
    }

}

