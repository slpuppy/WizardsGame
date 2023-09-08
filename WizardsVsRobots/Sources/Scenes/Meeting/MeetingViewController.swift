//
//  MeetingViewController.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import Foundation
import UIKit

protocol MeetingPresenterOutput: AnyObject {
    
}

class MeetingViewController: UIViewController {

    // MARK: - Properties
    var meetingView: MeetingView?
    var interactor: MeetingInteractor?
    var router: MeetingRouter?
    
    // MARK: - Lifecycle Methods
    
    override func loadView() {
        super.loadView()
        
        meetingView?.viewController = self
        self.view = meetingView
        
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
extension MeetingViewController: MeetingPresenterOutput {
    
}
