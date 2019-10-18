//
//  UsernameViewController.swift
//  LoginScreen
//
//  Created by Kelci Mensah on 10/18/19.
//  Copyright © 2019 Kelci Mensah. All rights reserved.
//

import Foundation
import UIKit       //swift library(import)

class UsernameViewController: UIViewController {    //new class represents new screen
    
    var username: String?
    let usernameLabel: UILabel = UILabel()
    let navigateButton = UIButton(type: .system)
    let navigate33Button = UIButton(type: .system)
    
    init(username: String) {    //java equivalent:: public UsernameViewController()
        super.init(nibName: nil, bundle: nil)
        self.username = username
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {   //changing the background color
        super.viewDidLoad()
        view.backgroundColor = .yellow
        addUsernameLabel()
        addbutton2()
        addbutton3()
        
    }
    
    func addUsernameLabel() {
        print("hi")
        if let username = self.username {   //checking to make sure username EXISTS
            usernameLabel.text = username
            print("hi2")
        }
        
        view.addSubview(usernameLabel)
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        let xConstraint = usernameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let yConstraint = usernameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        xConstraint.isActive = true
        yConstraint.isActive = true
    }
    
    func addbutton2() {
        navigateButton.setTitle("navigation ->", for: .normal)
        navigateButton.backgroundColor = .green
        
        navigateButton.addTarget(self, action: #selector(newfunc), for: .touchUpInside)
        view.addSubview(navigateButton)
        navigateButton.translatesAutoresizingMaskIntoConstraints = false
        let xCons = navigateButton.centerXAnchor.constraint(equalTo: usernameLabel.centerXAnchor)
        let yCons = navigateButton.centerYAnchor.constraint(equalTo: usernameLabel.centerYAnchor, constant: 45)
        
        xCons.isActive = true
        yCons.isActive = true
        
    }
    
    func addbutton3() {
        navigate33Button.setTitle("<-- back", for: .normal)
        navigate33Button.backgroundColor = .purple
        
        view.addSubview(navigate33Button)
        navigate33Button.translatesAutoresizingMaskIntoConstraints = false
        let xCons = navigate33Button.centerXAnchor.constraint(equalTo: navigateButton.centerXAnchor)
        let yCons = navigate33Button.centerYAnchor.constraint(equalTo: navigateButton.centerYAnchor, constant: 85)
        
        xCons.isActive = true
        yCons.isActive = true
        
    }
    
    @objc
    func newfunc() {
        self.navigationController?.popViewController(animated: true)
    }
}
