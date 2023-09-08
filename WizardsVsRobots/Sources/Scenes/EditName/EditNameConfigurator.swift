//
//  EditNameConfigurator.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import Foundation
class EditNameConfigurator {
    static func configureModule(viewController: EditNameViewController, coordinator: LobbyCoordinator) {
        let view = EditNameView()
        let router = EditNameRouter()
        let interactor = EditNameInteractor()
        let presenter = EditNamePresenter()
        
        viewController.editNameView = view
        viewController.router = router
        viewController.interactor = interactor
        
        interactor.presenter = presenter
        
        presenter.viewController = viewController
        
        router.navigationController = viewController.navigationController
        router.coordinator = coordinator
    }
}
