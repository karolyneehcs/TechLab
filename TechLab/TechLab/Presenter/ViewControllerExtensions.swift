//
//  ViewControllerExtensions.swift
//  TechLab
//
//  Created by Ana Karolina Costa da Silva on 18/01/22.
//

import Foundation
import UIKit

extension UIViewController {
    func showError(with message: String) {
        let alert = UIAlertController(title: "An error occurred!", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Close", style: .default, handler: { _ in
            alert.dismiss(animated: true, completion: nil)
        }))
        navigationController?.present(alert, animated: true, completion: nil)
    }
}
