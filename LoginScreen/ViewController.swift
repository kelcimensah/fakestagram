//
//  ViewController.swift
//  LoginScreen
//
//  Created by Kelci Mensah on 10/11/19.
//  Copyright © 2019 Kelci Mensah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addLogo()
        addUserNameField()
        addPassField()
        addLoginButton()
    }

    func newLabel() {
        var label1 = UILabel()
        label1.text = "Hello, friend"
        view.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        let xConstraint = label1.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            xConstraint.isActive = true
        let yConstraint = label1.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            yConstraint.isActive = true
    }
    
    func addLogo() {
        var logoView = UIImageView()
        
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
        let userNameField = UITextField()
        
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
        let passField = UITextField()
        
        //set properties
        passField.placeholder = "Password"
        view.addSubview(passField)
        passField.delegate = self
        passField.textAlignment = .center
        passField.translatesAutoresizingMaskIntoConstraints = false
        
        //constraints
        let yConstraint = passField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20)
        let leftConstraint = passField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        let rightConstraint = passField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        
        yConstraint.isActive = true
        leftConstraint.isActive = true
        rightConstraint.isActive = true
    }
    
    func addLoginButton() {
        let loginButton = UIButton(type: .system)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.blue, for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
        
        let yConstraint = loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90)
        let leftConstraint = loginButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        let rightConstraint = loginButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        
        yConstraint.isActive = true
        leftConstraint.isActive = true
        rightConstraint.isActive = true
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

