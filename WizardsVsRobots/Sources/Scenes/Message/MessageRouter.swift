//
//  MessageRouter.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

protocol MessageRouterProtocol {
    var navigationController: UINavigationController? { get }
    var coordinator: GameCoordinator? { get }
    
    func routeToMainGame()
}

class MessageRouter: MessageRouterProtocol {
    
    var coordinator: GameCoordinator?
    weak var navigationController: UINavigationController?
    
    
    func routeToMainGame() {
        coordinator?.eventOccurred(with: .returnedToMainGame)
    }

}
