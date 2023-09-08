//
//  CampfireViewController.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import Foundation
import UIKit

protocol CampfirePresenterOutput: AnyObject {
    
}

class CampfireViewController: UIViewController {

    // MARK: - Properties
    var campfireView: CampfireView?
    var interactor: CampfireInteractor?
    var router: CampfireRouter?
    
    // MARK: - Lifecycle Methods
    
    override func loadView() {
        super.loadView()
        
        campfireView?.viewController = self
        self.view = campfireView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        interactor?.viewDidLoad()
    }
    
    // MARK: - Actions
    @objc func navigateToMainGame() {
        router?.routeToMainGame()
    }
    
    @objc func navigateToMeeting() {
        router?.routeToMeeting()
    }
    
}

// MARK: - Presenter Output
extension CampfireViewController: CampfirePresenterOutput {
    
}
