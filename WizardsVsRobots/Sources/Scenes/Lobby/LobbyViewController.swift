//
//  LobbyViewController.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit

protocol LobbyPresenterOutput: AnyObject {
    
}

class LobbyViewController: UIViewController {

    // MARK: - Properties
    var lobbyView: LobbyView?
    var interactor: LobbyInteractor?
    var router: LobbyRouter?
    
    // MARK: - Lifecycle Methods
    
    override func loadView() {
        super.loadView()
        
        lobbyView?.viewController = self
        self.view = lobbyView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        interactor?.viewDidLoad()
    }
    
    // MARK: - Actions
    @objc func navigateToMainGameView() {
        router?.routeToMainGame()
    }
}

// MARK: - Presenter Output
extension LobbyViewController: LobbyPresenterOutput {
    
}
