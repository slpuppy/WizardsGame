//
//  LobbyCoordinator.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 30/08/22.
//

import UIKit

class LobbyCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    var gameCoordinator: GameCoordinator?
    
    func start() {
        let viewController = StartViewController()

        navigationController?.setViewControllers([viewController], animated: false)
        
        StartConfigurator.configureModule(viewController: viewController, coordinator: self)
    }
    
    func eventOccurred(with type: LobbyEvent) {
        
        switch(type) {
        case .editName:
            
            let viewController = EditNameViewController()
            navigationController?.pushViewController(viewController, animated: true)
            EditNameConfigurator.configureModule(viewController: viewController, coordinator: self)
            
        case .enteredLobby:
            
            let viewController = LobbyViewController()
            navigationController?.pushViewController(viewController, animated: true)
            LobbyConfigurator.configureModule(viewController: viewController, coordinator: self)
            
        case .gameStarted:
            
            let gameNavigationController = UINavigationController()
            
            gameCoordinator = GameCoordinator()
            gameCoordinator?.navigationController = gameNavigationController
            gameCoordinator?.start()
            navigationController?.viewControllers.last?.present(gameNavigationController, animated: true)
            
            
        default:
            navigationController?.popToRootViewController(animated: true)
            
        }
        
    }
}

enum LobbyEvent {
    case editName
    case enteredLobby
    case gameStarted
}
