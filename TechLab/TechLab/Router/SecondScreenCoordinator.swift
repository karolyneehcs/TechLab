//
//  SecondScreenCoordinator.swift
//  TechLab
//
//  Created by Ana Karolina Costa da Silva on 18/01/22.
//

import UIKit

class SecondScreenCoordinator: Coordinator {
    var rootViewController: UIViewController?
    
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
//        let secondScreenController = SecondScreenCoordinator
    }

    
}
