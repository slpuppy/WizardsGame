//
//  LobbyView.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit
import SnapKit

class LobbyView: UIView {
    
    // MARK: - Properties
    weak var viewController: LobbyViewController?
    
    
    lazy var startGameButton: UIButton = {
        let button = UIButton()
        button.setTitle("Start Game", for: .normal)
        button.setTitleColor(UIColor.appLight, for: .normal)
        button.addTarget(self.viewController, action: #selector(viewController?.navigateToMainGameView), for: .touchUpInside)
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

extension LobbyView {
    
    private func setupUI(){
        
        backgroundColor = .appDarkness
        
        addSubview(startGameButton)
        startGameButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
    }
    
}
