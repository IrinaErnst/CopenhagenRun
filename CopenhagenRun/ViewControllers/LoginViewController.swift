//
//  LoginViewController.swift
//  CopenhagenRun
//
//  Created by Irina Ernst on 10/3/17.
//  Copyright © 2017 IrinaErnst. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - @IBOutlet(s)
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    // MARK: - Prooperties
    let inputContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.green
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    let loginRegisterButton: UIButton = {
        let button = UIButton(type: UIButtonType.system)
        button.backgroundColor = Colors.lightBlack
        button.setTitle("Sign up", for: .normal)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.setTitleColor(Colors.green, for: .normal)
        return button
    }()
    
    let aliasTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "Alias",
                                                             attributes: [NSAttributedStringKey.foregroundColor: Colors.darkGrey])
        return textField
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "Email",
                                                             attributes: [NSAttributedStringKey.foregroundColor: Colors.darkGrey])
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "Password",
                                                             attributes: [NSAttributedStringKey.foregroundColor: Colors.darkGrey])
        return textField
    }()
    
    let confirmPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: "Confirm Password",
                                                             attributes: [NSAttributedStringKey.foregroundColor: Colors.darkGrey])
        return textField
    }()
    
    let aliasSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.darkGrey
        return view
    }()
    
    let emailSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.darkGrey
        return view
    }()
    
    let passwordSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.darkGrey
        return view
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK: - Configure view controller
extension LoginViewController {
    
    func configureView() {
        segmentedControl.selectedSegmentIndex = 1
        
        view.addSubview(inputContainerView)
        view.addSubview(loginRegisterButton)
        view.addConstraintsWithFormat(format: "H:|-20-[v0]-20-|", views: inputContainerView)
        view.addConstraintsWithFormat(format: "H:|-20-[v0]-20-|", views: loginRegisterButton)
        view.addConstraintsWithFormat(format: "V:|-170-[v0(200)]-20-[v1(50)]", views: inputContainerView, loginRegisterButton)
       
        configureTextFields()
    }
    
    func configureTextFields() {
         let items = [aliasTextField, aliasSeparator, emailTextField, emailSeparator, passwordTextField,
                      passwordSeparator, confirmPasswordTextField]
        for item in items {
            inputContainerView.addSubview(item)
            inputContainerView.addConstraintsWithFormat(format: "H:|-12-[v0]-12-|", views: item)
        }
        inputContainerView.addConstraintsWithFormat(format: "V:|-0-[v0(50)]-0-[v1(1)]-0-[v2(50)]-0-[v3(1)]-0-[v4(50)]-0-[v5(1)]-0-[v6(50)]-0-|",
                                                    views: aliasTextField, aliasSeparator, emailTextField,
                                                    emailSeparator, passwordTextField, passwordSeparator,
                                                    confirmPasswordTextField)
    }
}
