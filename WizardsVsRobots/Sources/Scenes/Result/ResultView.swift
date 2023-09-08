//
//  ResultView.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit
import SnapKit

class ResultView: UIView {
    
    // MARK: - Properties
    weak var viewController: ResultViewController?
    
    
    lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.text = "Result"
        label.textColor = .appBlueRobot
        return label
    }()
    
    lazy var returnToLobby: UIButton = {
        let button = UIButton()
        button.setTitle("Return to Lobby", for: .normal)
        button.setTitleColor(UIColor.appLight, for: .normal)
        button.addTarget(self.viewController, action: #selector(viewController?.navigateToLobby), for: .touchUpInside)
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

extension ResultView {
    
    private func setupUI(){
        
        backgroundColor = .appDarkness
        
        addSubview(resultLabel)
        resultLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        addSubview(returnToLobby)
        returnToLobby.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(resultLabel.snp.bottom).offset(32)
        }
        
    }
    
}
