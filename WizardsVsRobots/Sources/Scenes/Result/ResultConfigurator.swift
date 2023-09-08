//
//  ResultConfigurator.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

class ResultConfigurator {
    static func configureModule(viewController: ResultViewController, coordinator: GameCoordinator) {
        let view = ResultView()
        let router = ResultRouter()
        let interactor = ResultInteractor()
        let presenter = ResultPresenter()
        
        viewController.resultView = view
        viewController.router = router
        viewController.interactor = interactor
        
        interactor.presenter = presenter
        
        presenter.viewController = viewController
        
        router.navigationController = viewController.navigationController
        router.coordinator = coordinator
    }
}
