//
//  Colors.swift
//  TechLab
//
//  Created by Ana Karolina Costa da Silva on 25/01/22.
//

import UIKit

class Colors {
    var gradientPurple:CAGradientLayer!

    init() {
        let colorTop =  UIColor(red: 0.491, green: 0.133, blue: 1, alpha: 0.5).cgColor
        let colorBottom = UIColor(red: 0.267, green: 0.09, blue: 0.514, alpha: 1).cgColor

        self.gradientPurple = CAGradientLayer()
        self.gradientPurple.colors = [colorTop, colorBottom]
        self.gradientPurple.locations = [0.0, 1.0]
    }
}
