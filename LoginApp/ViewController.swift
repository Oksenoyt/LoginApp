//
//  ViewController.swift
//  LoginApp
//
//  Created by Arseniy Oksenoyt on 6/20/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonPressed() {
        if loginTextField.text != "user" || passwordTextField.text != "123" {
            showAler(with: "Damn", and: "User name or password incorrect")
        }
    }
    @IBAction func forgotUserNameButtonPressed() {
        showAler(with: "Damn", and: "User name - user")
    }
    @IBAction func forgotPassworduttonPressed() {
        showAler(with: "Damn", and: "Password - 123")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "welcomeScreenSegue" {
            if loginTextField.text == "user" && passwordTextField.text == "123" {
                return true
            }
        }
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeScreenViewController else { return }

        welcomeVC.welcomeLabelText = "Welcome, \(loginTextField.text ?? "")"
        welcomeVC.modalPresentationStyle = .fullScreen
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text?.removeAll()
        passwordTextField.text?.removeAll()
    }
}


extension ViewController {
    private func showAler(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
