//
//  StartRouter.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 22/08/22.
//
import UIKit

protocol StartRouterProtocol {
    var navigationController: UINavigationController? { get }
    var coordinator: LobbyCoordinator? { get }
    
    func routeToEditName()
}

class StartRouter: StartRouterProtocol {
    var coordinator: LobbyCoordinator?
    
    weak var navigationController: UINavigationController?
    
    func routeToEditName() {
        coordinator?.eventOccurred(with: .editName)
    }
}
