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
    
    let userName = "I"
    let password = "am"
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }

    @IBAction func logInButtonPressed() {
        guard let inputText = userNameTF.text, !inputText.isEmpty else {
            showAlert(
                withTitle: "Text field is empty",
                andMessage: "Please enter your User Name")
            return
        }
        
        guard let inputText = userNameTF.text, inputText == userName else {
            showAlert(withTitle: "nj", andMessage: "jn")
            return
        }
        
        guard let inputText = passwordTF.text, inputText == password else {
            showAlert(
                withTitle: "User Name or password are wrong",
                andMessage: "Please check mistakes")
            return
        }
    }
    
    @IBAction func forgotUserNamePressed() {
    }
    
    @IBAction func forgotPasswordPressed(_ sender: Any) {
    }
    
}

// MARK: - UIAlertController
extension LogInViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

