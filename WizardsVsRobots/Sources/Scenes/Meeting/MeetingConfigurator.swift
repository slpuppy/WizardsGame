//
//  MeetingConfigurator.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

class MeetingConfigurator {
    static func configureModule(viewController: MeetingViewController, coordinator: GameCoordinator) {
        let view = MeetingView()
        let router = MeetingRouter()
        let interactor = MeetingInteractor()
        let presenter = MeetingPresenter()
        
        viewController.meetingView = view
        viewController.router = router
        viewController.interactor = interactor
        
        interactor.presenter = presenter
        
        presenter.viewController = viewController
        
        router.navigationController = viewController.navigationController
        router.coordinator = coordinator
    }
}
