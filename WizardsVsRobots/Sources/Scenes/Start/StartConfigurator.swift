//
//  StartConfigurator.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 22/08/22.
//

import UIKit

class StartConfigurator {
    static func configureModule(viewController: StartViewController, coordinator: LobbyCoordinator) {
        let view = StartView()
        let router = StartRouter()
        let interactor = StartInteractor()
        let presenter = StartPresenter()
        
        viewController.startView = view
        viewController.router = router
        viewController.interactor = interactor
        
        interactor.presenter = presenter
        
        presenter.viewController = viewController
        
        router.navigationController = viewController.navigationController
        router.coordinator = coordinator
    }
}
