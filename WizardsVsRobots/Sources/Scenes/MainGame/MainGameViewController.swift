//
//  MainGameViewController.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import Foundation
import UIKit

protocol MainGamePresenterOutput: AnyObject {
    
}

class MainGameViewController: UIViewController {

    // MARK: - Properties
    var mainGameView: MainGameView?
    var interactor: MainGameInteractor?
    var router: MainGameRouter?
    
    // MARK: - Lifecycle Methods
    
    override func loadView() {
        super.loadView()
        mainGameView?.viewController = self
        self.view = mainGameView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        interactor?.viewDidLoad()
    }
    
    // MARK: - Actions
    @objc func navigateToCampfire() {
        router?.routeToCampfire()
    }
    
    @objc func navigateToTask() {
        router?.routeToTask()
    }
    
    @objc func navigateToMessage() {
        router?.routeToMessage()
    }
    
    @objc func navigateToResult() {
        router?.routeToResult()
    }
    
}

// MARK: - Presenter Output
extension MainGameViewController: MainGamePresenterOutput {
    
}
