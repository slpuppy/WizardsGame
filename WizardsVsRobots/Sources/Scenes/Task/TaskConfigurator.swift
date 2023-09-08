//
//  TaskConfigurator.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

class TaskConfigurator {
    static func configureModule(viewController: TaskViewController, coordinator: GameCoordinator) {
        let view = TaskView()
        let router = TaskRouter()
        let interactor = TaskInteractor()
        let presenter = TaskPresenter()
        
        viewController.taskView = view
        viewController.router = router
        viewController.interactor = interactor
        
        interactor.presenter = presenter
        
        presenter.viewController = viewController
        
        router.navigationController = viewController.navigationController
        router.coordinator = coordinator
    }
}
