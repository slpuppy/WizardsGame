//
//  GameCoordinator.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 30/08/22.
//

import UIKit

class GameCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    func start() {        
        let viewController = MainGameViewController()

        navigationController?.setViewControllers([viewController], animated: false)
        
        MainGameConfigurator.configureModule(viewController: viewController, coordinator: self)
    }
    
    func eventOccurred(with type: GameEvent) {
        
        switch(type) {
            
        case .enteredCampfire:
            
            let viewController = CampfireViewController()
            navigationController?.pushViewController(viewController, animated: true)
            CampfireConfigurator.configureModule(viewController: viewController, coordinator: self)
            
        case .returnedToMainGame:
            navigationController?.popToRootViewController(animated: true)
            
        case .calledMeeting:
            let viewController = MeetingViewController()
            navigationController?.pushViewController(viewController, animated: true)
            MeetingConfigurator.configureModule(viewController: viewController, coordinator: self)
            
        case .enteredTask:
            let viewController = TaskViewController()
            navigationController?.pushViewController(viewController, animated: true)
            TaskConfigurator.configureModule(viewController: viewController, coordinator: self)
            
        case .showGameResult:
            let viewController = ResultViewController()
            navigationController?.pushViewController(viewController, animated: true)
            ResultConfigurator.configureModule(viewController: viewController, coordinator: self)
            
        case .showMessage:
            let viewController = MessageViewController()
            navigationController?.pushViewController(viewController, animated: true)
            MessageConfigurator.configureModule(viewController: viewController, coordinator: self)
            
        case .returnToLobby:
            navigationController?.dismiss(animated: true)
            
        default:
            navigationController?.popToRootViewController(animated: true)
            
        }
        
    }
}

enum GameEvent {
    case enteredCampfire
    case returnedToMainGame
    case calledMeeting
    case enteredTask
    case showGameResult
    case showMessage
    case returnToLobby
}
