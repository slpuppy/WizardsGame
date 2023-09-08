//
//  MessageViewController.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import Foundation
import UIKit

protocol MessagePresenterOutput: AnyObject {
    
}

class MessageViewController: UIViewController {

    // MARK: - Properties
    var messageView: MessageView?
    var interactor: MessageInteractor?
    var router: MessageRouter?
    
    // MARK: - Lifecycle Methods
    
    override func loadView() {
        super.loadView()
        
        messageView?.viewController = self
        self.view = messageView
        
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
    
}

// MARK: - Presenter Output
extension MessageViewController: MessagePresenterOutput {
    
}
