//
//  LobbyConfigurator.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

class LobbyConfigurator {
    static func configureModule(viewController: LobbyViewController, coordinator: LobbyCoordinator) {
        let view = LobbyView()
        let router = LobbyRouter()
        let interactor = LobbyInteractor()
        let presenter = LobbyPresenter()
        
        viewController.lobbyView = view
        viewController.router = router
        viewController.interactor = interactor
        
        interactor.presenter = presenter
        
        presenter.viewController = viewController
        
        router.navigationController = viewController.navigationController
        router.coordinator = coordinator
    }
}
