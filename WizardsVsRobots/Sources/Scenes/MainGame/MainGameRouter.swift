//
//  MainGameRouter.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

protocol MainGameRouterProtocol {
    var navigationController: UINavigationController? { get }
    var coordinator: GameCoordinator? { get }
    
    func routeToCampfire()
    func routeToTask()
    func routeToMessage()
    func routeToResult()
}

class MainGameRouter: MainGameRouterProtocol {
    
    var coordinator: GameCoordinator?
    weak var navigationController: UINavigationController?
    
    
    func routeToCampfire() {
        coordinator?.eventOccurred(with: .enteredCampfire)
    }
    
    func routeToTask() {
        coordinator?.eventOccurred(with: .enteredTask)
    }
    
    func routeToMessage() {
        coordinator?.eventOccurred(with: .showMessage)
    }
    
    func routeToResult() {
        coordinator?.eventOccurred(with: .showGameResult)
    }
    
}
