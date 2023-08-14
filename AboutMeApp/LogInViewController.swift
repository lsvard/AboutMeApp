//
//  ViewController.swift
//  AboutMeApp
//
//  Created by l.s.vard on 13.08.2023.
//

import UIKit

final class LogInViewController: UIViewController {
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let userName = "User"
    let password = "1"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.welcomeLabelText = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK: - IBActions/
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text?.removeAll()
        passwordTF.text?.removeAll()
    }
    
    // MARK: - IBActions
    @IBAction func logInButtonDidPressed() {
        guard let inputText = userNameTF.text, !inputText.isEmpty else {
            showAlert(
                withTitle: "User Name field is empty",
                andMessage: "Please, enter User Name"
            )
            return
        }
        
        guard let inputText = passwordTF.text, !inputText.isEmpty else {
            showAlert(
                withTitle: "Password field is empty",
                andMessage: "Please, enter password"
            )
            return
        }
        
        guard let inputText = userNameTF.text, inputText == userName else {
            showAlert(
                withTitle: "Invalid User Name or password",
                andMessage: "Please, enter correct User Name or password"
            )
            return
        }
        
        guard let inputText = passwordTF.text, inputText == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login or password"
            )
            return
        }
    }
    
    @IBAction func forgotUserNameDidPressed() {
        showAlert(
            withTitle: "Oops",
            andMessage: "Your User name is \(userName)"
        )
    }
    
    @IBAction func forgotPasswordDidPressed() {
        showAlert(
            withTitle: "Oops",
            andMessage: "Your password is \(password)"
        )
    }
    
}

// MARK: - UIAlertController
extension LogInViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

