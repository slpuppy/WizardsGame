//
//  MainGameConfigurator.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

class MainGameConfigurator {
    static func configureModule(viewController: MainGameViewController, coordinator: GameCoordinator) {
        let view = MainGameView()
        let router = MainGameRouter()
        let interactor = MainGameInteractor()
        let presenter = MainGamePresenter()
        
        viewController.mainGameView = view
        viewController.router = router
        viewController.interactor = interactor
        
        interactor.presenter = presenter
        
        presenter.viewController = viewController
        
        router.navigationController = viewController.navigationController
        router.coordinator = coordinator
    }
}
