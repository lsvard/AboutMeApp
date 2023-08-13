//
//  greetingViewController.swift
//  AboutMeApp
//
//  Created by l.s.vard on 13.08.2023.
//

import UIKit

final class GreetingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // MARK: - Privat Method
     
    private func setGradienViewColor() {
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [UIColor.systemPink.cgColor, UIColor.systemPurple.cgColor]
        view.layer.addSublayer(layer)
    }


}
