//
//  CampfireConfigurator.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

class CampfireConfigurator {
    static func configureModule(viewController: CampfireViewController, coordinator: GameCoordinator) {
        let view = CampfireView()
        let router = CampfireRouter()
        let interactor = CampfireInteractor()
        let presenter = CampfirePresenter()
        
        viewController.campfireView = view
        viewController.router = router
        viewController.interactor = interactor
        
        interactor.presenter = presenter
        
        presenter.viewController = viewController
        
        router.navigationController = viewController.navigationController
        router.coordinator = coordinator
    }
}
