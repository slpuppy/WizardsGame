//
//  Coordinator.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 22/08/22.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController? { get set }

    func start()
    
}

protocol Coordinating {
    var coordinator : Coordinator? { get set }
}
