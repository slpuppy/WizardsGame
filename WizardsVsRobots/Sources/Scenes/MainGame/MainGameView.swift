//
//  MainGameView.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit
import SnapKit

class MainGameView: UIView {
    
    // MARK: - Properties
    weak var viewController: MainGameViewController?
    
    
    lazy var campfireButton: UIButton = {
        let button = UIButton()
        button.setTitle("Enter Campfire", for: .normal)
        button.setTitleColor(UIColor.appLight, for: .normal)
        button.addTarget(self.viewController, action: #selector(viewController?.navigateToCampfire), for: .touchUpInside)
        return button
    }()
    
    lazy var taskButton: UIButton = {
        let button = UIButton()
        button.setTitle("Enter Task", for: .normal)
        button.setTitleColor(UIColor.appLight, for: .normal)
        button.addTarget(self.viewController, action: #selector(viewController?.navigateToTask), for: .touchUpInside)
        return button
    }()
    
    lazy var resultButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show Result", for: .normal)
        button.setTitleColor(UIColor.appLight, for: .normal)
        button.addTarget(self.viewController, action: #selector(viewController?.navigateToResult), for: .touchUpInside)
        return button
    }()
    
    lazy var messageButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show Message", for: .normal)
        button.setTitleColor(UIColor.appLight, for: .normal)
        button.addTarget(self.viewController, action: #selector(viewController?.navigateToMessage), for: .touchUpInside)
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

extension MainGameView {
    
    private func setupUI(){
        
        backgroundColor = .appDarkness
        
        addSubview(campfireButton)
        campfireButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        addSubview(taskButton)
        taskButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(campfireButton.snp.bottom).offset(32)
        }
        
        addSubview(resultButton)
        resultButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(taskButton.snp.bottom).offset(32)
        }
        
        addSubview(messageButton)
        messageButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(resultButton.snp.bottom).offset(32)
        }
        
    }
    
}
