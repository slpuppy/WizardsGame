//
//  ResultViewController.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import Foundation
import UIKit

protocol ResultPresenterOutput: AnyObject {
    
}

class ResultViewController: UIViewController {

    // MARK: - Properties
    var resultView: ResultView?
    var interactor: ResultInteractor?
    var router: ResultRouter?
    
    // MARK: - Lifecycle Methods
    
    override func loadView() {
        super.loadView()
        
        resultView?.viewController = self
        self.view = resultView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        interactor?.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @objc func navigateToLobby() {
        router?.routeToLobby()
    }
    
}

// MARK: - Presenter Output
extension ResultViewController: ResultPresenterOutput {
    
}
