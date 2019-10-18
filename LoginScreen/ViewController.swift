//
//  ViewController.swift
//  LoginScreen
//
//  Created by Kelci Mensah on 10/11/19.
//  Copyright © 2019 Kelci Mensah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let userNameField = UITextField()
    let passField = UITextField()
    var label1 = UILabel()
    let loginButton = UIButton(type: .system)
    let logoView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addLogo()
        addUserNameField()
        addPassField()
        addLoginButton()
    }

    func newLabel() {
        label1.text = "Hello, friend"
        view.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        let xConstraint = label1.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            xConstraint.isActive = true
        let yConstraint = label1.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            yConstraint.isActive = true
    }
    
    func addLogo() {
        
        //adding logo to UIImageView
        logoView.image = UIImage(named: "instagram-logo.png")
        
        //add imageView as subview
        view.addSubview(logoView)
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        logoView.contentMode = .scaleAspectFit
        
        let topConstraint = logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120)
        let xConstraint = logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        let widthConstraint = logoView.widthAnchor.constraint(equalToConstant: 250)
        
        topConstraint.isActive = true
        xConstraint.isActive = true
        widthConstraint.isActive = true
    }
    
    func addUserNameField() {
        
        //set properties
        userNameField.placeholder = "Username"
        view.addSubview(userNameField)
        userNameField.delegate = self
        userNameField.textAlignment = .center
        userNameField.translatesAutoresizingMaskIntoConstraints = false
        
        //constraints
        let yConstraint = userNameField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20)
        let leftConstraint = userNameField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        let rightConstraint = userNameField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        
        yConstraint.isActive = true
        leftConstraint.isActive = true
        rightConstraint.isActive = true
    }
    
    func addPassField() {
        
        //set properties
        passField.placeholder = "Password"
        view.addSubview(passField)
        passField.delegate = self
        passField.textAlignment = .center
        passField.translatesAutoresizingMaskIntoConstraints = false
        passField.isSecureTextEntry = true
        
        //constraints
        let yConstraint = passField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20)
        let leftConstraint = passField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        let rightConstraint = passField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        
        yConstraint.isActive = true
        leftConstraint.isActive = true
        rightConstraint.isActive = true
    }
    
    func addLoginButton() {
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .blue
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
        
        loginButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        
        let yConstraint = loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -340)
        let leftConstraint = loginButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60)
        let rightConstraint = loginButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60)
        
        yConstraint.isActive = true
        leftConstraint.isActive = true
        rightConstraint.isActive = true
    }

        @objc
    func loginButtonPressed(){
        print("Button Pressed")
            
            if let username: String = userNameField.text ,
            let password = passField.text {
                if(!username.isEmpty && !password.isEmpty){
                    print(username)
                    let usernameViewController = UsernameViewController(username: username)
                    
                    self.navigationController?.pushViewController(usernameViewController, animated: true)
                } else {
                    print("Not Entered")
                }
            }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // dismiss the keyboard
        textField.resignFirstResponder() //dismisses the text field
        return true
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("user started typing")
    }
    
    
}

