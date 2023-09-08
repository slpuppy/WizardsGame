//
//  CampfireRouter.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

protocol CampfireRouterProtocol {
    var navigationController: UINavigationController? { get }
    var coordinator: GameCoordinator? { get }
    
    func routeToMainGame()
}

class CampfireRouter: CampfireRouterProtocol {
    
    var coordinator: GameCoordinator?
    weak var navigationController: UINavigationController?
    
    
    func routeToMainGame() {
        coordinator?.eventOccurred(with: .returnedToMainGame)
    }
    
    func routeToMeeting() {
        coordinator?.eventOccurred(with: .calledMeeting)
    }
    
    
}
