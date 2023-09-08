//
//  TaskViewController.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import Foundation
import UIKit

protocol TaskPresenterOutput: AnyObject {
    
}

class TaskViewController: UIViewController {

    // MARK: - Properties
    var taskView: TaskView?
    var interactor: TaskInteractor?
    var router: TaskRouter?
    
    // MARK: - Lifecycle Methods
    
    override func loadView() {
        super.loadView()
        
        taskView?.viewController = self
        self.view = taskView
        
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
extension TaskViewController: TaskPresenterOutput {
    
}
