//
//  EditNameViewController.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import Foundation
import UIKit

protocol EditNamePresenterOutput: AnyObject {
    
}

class EditNameViewController: UIViewController {
    
    // MARK: - Properties
    var editNameView: EditNameView?
    var interactor: EditNameInteractor?
    var router: EditNameRouter?
    
    // MARK: - Lifecycle Methods
    
    override func loadView() {
        super.loadView()
        
        editNameView?.viewController = self
        self.view = editNameView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        interactor?.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @objc func navigateToLobby(){
        router?.routeToLobby()
    }
    
}

extension EditNameViewController: EditNamePresenterOutput {
    
}
