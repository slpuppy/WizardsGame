//
//  StartView.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 22/08/22.
//

import UIKit
import SnapKit

class StartView: UIView {
    
    // MARK: - Properties
    weak var viewController: StartViewController?
    
    
    lazy var addNameButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go to AddNameView", for: .normal)
        button.setTitleColor(UIColor.appLight, for: .normal)
        button.addTarget(self.viewController, action: #selector(viewController?.navigateToEditName), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Actions
    
}

// MARK: - UI Setup

extension StartView {
    
    private func setupUI(){
        
        backgroundColor = .appDarkness
        
        addSubview(addNameButton)
        addNameButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
    }
    
}
