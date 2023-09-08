//
//  EditNameRouter.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

protocol EditNameRouterProtocol {
    var navigationController: UINavigationController? { get }
    var coordinator: LobbyCoordinator? { get }
    
    func routeToLobby()
}

class EditNameRouter: EditNameRouterProtocol {
    
    var coordinator: LobbyCoordinator?
    
    weak var navigationController: UINavigationController?
    
    func routeToLobby() {
        coordinator?.eventOccurred(with: .enteredLobby)
    }
}
