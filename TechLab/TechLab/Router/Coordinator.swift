//
//  Coordinator.swift
//  TechLab
//
//  Created by Ana Karolina Costa da Silva on 18/01/22.
//

import UIKit

protocol Coordinator: AnyObject {
    
    var rootViewController: UIViewController? { get }
    var childCoordinators: [Coordinator] { get set}
    var navigationController: UINavigationController { get set }
    
    func start()
    func push(coordinator: Coordinator)
}

extension Coordinator {
    func push(coordinator: Coordinator) {
        childCoordinators.append(coordinator)
        coordinator.start()
        guard let rootViewController = coordinator.rootViewController else { fatalError() }
        navigationController.pushViewController(rootViewController, animated: true)
    }
}
