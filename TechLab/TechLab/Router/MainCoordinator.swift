//
//  MainCoordinator.swift
//  TechLab
//
//  Created by Ana Karolina Costa da Silva on 17/01/22.
//

import UIKit
import Foundation

class MainCoordinator: Coordinator {
    var rootViewController: UIViewController?
    var childCoordinators: [Coordinator]
    var navigationController: UINavigationController
    let window: UIWindow!
    
    init(window: UIWindow = UIWindow(),
        navigationController: UINavigationController = UINavigationController()) {
        self.window = window
        self.navigationController = navigationController
        self.childCoordinators = []
    }
    
    func start() {
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
        push(coordinator: FirstScreenCoordinator(navigationController: navigationController))
    }
}
