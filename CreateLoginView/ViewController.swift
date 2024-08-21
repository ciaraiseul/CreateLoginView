//
//  ViewController.swift
//  CreateLoginView
//
//  Created by Phạm Trường Giang on 21/08/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        emailTextField.placeholder = "Email"
        emailTextField.backgroundColor = UIColor.white
        passwordTextField.placeholder = "Password"
        passwordTextField.backgroundColor = UIColor.white
        passwordTextField.isSecureTextEntry = true
        loginButton.backgroundColor = .systemOrange
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 5
        
        registerButton.setTitleColor(UIColor(red: 217/255, green: 116/255, blue: 43/255, alpha: 1), for: .normal)
        forgotPasswordButton.setTitleColor(UIColor(red: 217/255, green: 116/255, blue: 43/255, alpha: 1), for: .normal)
    }


    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        print("Email: \(email)")
        print("Password: \(password)")
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        showAlert(title: "Register", message: "Register button tapped")
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        showAlert(title: "Forgot Password", message: "Forgot Password button tapped")
    }
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }



}

