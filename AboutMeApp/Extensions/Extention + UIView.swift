//
//  Extention + UIView.swift
//  AboutMeApp
//
//  Created by Mikhail Tabakaev on 4/5/24.
//

import UIKit

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer() {
        let primaryColor = UIColor(
            red: 239/251,
            green: 188/243,
            blue: 155/213,
            alpha: 1
        )
        
        let secondaryColor = UIColor(
            red: 214/156,
            green: 218/175,
            blue: 200/170,
            alpha: 1
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
