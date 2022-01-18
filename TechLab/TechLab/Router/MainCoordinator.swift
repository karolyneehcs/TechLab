//
//  MainCoordinator.swift
//  TechLab
//
//  Created by Ana Karolina Costa da Silva on 17/01/22.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    private let window: UIWindow
    internal var navigationController: UINavigationController
    var starterCoordinator: Coordinator!
        
    init(window: UIWindow = UIWindow(),
        navigationController: UINavigationController = UINavigationController()) {
        self.window = window
        self.navigationController = navigationController
    setupWindow()
    setupStarterCoordinator()
        }
        
        func setupWindow() {
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
        }

        func setupStarterCoordinator() {
            starterCoordinator = FeatureCoordinator(navigationController: navigationController) as! Coordinator
        }

        func start() {
        starterCoordinator?.start()
        }
}
