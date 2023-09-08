//
//  LobbyRouter.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

protocol LobbyRouterProtocol {
    var navigationController: UINavigationController? { get }
    var coordinator: LobbyCoordinator? { get }
    
    func routeToMainGame()
}

class LobbyRouter: LobbyRouterProtocol {
    
    var coordinator: LobbyCoordinator?
    
    weak var navigationController: UINavigationController?
    
    func routeToMainGame() {
        coordinator?.eventOccurred(with: .gameStarted)
    }
}
