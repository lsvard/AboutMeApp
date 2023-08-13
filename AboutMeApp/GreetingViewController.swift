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
        setGradienViewColor()

        
    }
    
    // MARK: - Privat Method
     
    private func setGradienViewColor() {
        let topColor = UIColor(red: (197/255.0), green: (112/255.0), blue:(153/255.0), alpha: 1)
        let downColor = UIColor(red: (135/255.0), green: (138/255.0), blue:(255/255.0), alpha: 1)
        let layer = CAGradientLayer()
        
        layer.frame = view.bounds
        layer.colors = [topColor.cgColor, downColor.cgColor]
        view.layer.insertSublayer(layer, at: 0)
    }


}
