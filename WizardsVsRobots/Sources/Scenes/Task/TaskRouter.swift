//
//  TaskRouter.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

protocol TaskRouterProtocol {
    var navigationController: UINavigationController? { get }
    var coordinator: GameCoordinator? { get }
    
    func routeToMainGame()
}

class TaskRouter: TaskRouterProtocol {
    
    var coordinator: GameCoordinator?
    weak var navigationController: UINavigationController?
    
    
    func routeToMainGame() {
        coordinator?.eventOccurred(with: .returnedToMainGame)
    }

}
