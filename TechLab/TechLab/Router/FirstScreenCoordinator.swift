//
//  FirstScreenCoordinator.swift
//  TechLab
//
//  Created by Ana Karolina Costa da Silva on 18/01/22.
//

import UIKit

class FirstScreenCoordinator: Coordinator {

    var rootViewController: UIViewController?
    
    var childCoordinators: [Coordinator]
    let firstScene: FirstViewController!
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.childCoordinators = []
        self.firstScene = FirstViewController()
    }
    
    func start() {
     //   guard let firstScene = FirstViewController() else { return }
        rootViewController = firstScene
    }
    
    func goToList() {
        let secondScreenCoordinator = SecondScreenCoordinator(navigationController: navigationController)
        push(coordinator: secondScreenCoordinator)
    }
    
}
