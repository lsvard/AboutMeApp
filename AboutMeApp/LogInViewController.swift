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

    @IBAction func logInButtonDidTapped() {
    }
    
    @IBAction func forgotUserNameDidTapped() {
    }
    
    @IBAction func forgotPasswordDidTapped(_ sender: Any) {
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

