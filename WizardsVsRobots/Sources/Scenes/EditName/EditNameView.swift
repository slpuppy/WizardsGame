//
//  EditNameView.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit
import SnapKit

class EditNameView: UIView {
    
    // MARK: - Properties
    weak var viewController: EditNameViewController?
    
    lazy var enterLobbyButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go to Lobby", for: .normal)
        button.setTitleColor(UIColor.appLight, for: .normal)
        button.addTarget(self.viewController, action: #selector(viewController?.navigateToLobby), for: .touchUpInside)
        
        return button
    }()
    
    
    //MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension EditNameView {
    private func setupUI() {
        
        backgroundColor = .appDarkness
        
        addSubview(enterLobbyButton)
        enterLobbyButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
    }
}
