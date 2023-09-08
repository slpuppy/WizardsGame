//
//  MessageConfigurator.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

class MessageConfigurator {
    static func configureModule(viewController: MessageViewController, coordinator: GameCoordinator) {
        let view = MessageView()
        let router = MessageRouter()
        let interactor = MessageInteractor()
        let presenter = MessagePresenter()
        
        viewController.messageView = view
        viewController.router = router
        viewController.interactor = interactor
        
        interactor.presenter = presenter
        
        presenter.viewController = viewController
        
        router.navigationController = viewController.navigationController
        router.coordinator = coordinator
    }
}
