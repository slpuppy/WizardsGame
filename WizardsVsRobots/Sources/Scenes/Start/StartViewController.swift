//
//  ViewController.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 22/08/22.
//

import UIKit

protocol StartPresenterOutput: AnyObject {
    
}

class StartViewController: UIViewController {

    // MARK: - Properties
    var startView: StartView?
    var interactor: StartInteractor?
    var router: StartRouter?
    
    // MARK: - Lifecycle Methods
    
    override func loadView() {
        super.loadView()
        
        startView?.viewController = self
        self.view = startView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactor?.viewDidLoad()
    }
    
    // MARK: - Actions
    @objc func navigateToEditName() {
        router?.routeToEditName()
    }
}

// MARK: - Presenter Output
extension StartViewController: StartPresenterOutput {
    
}

