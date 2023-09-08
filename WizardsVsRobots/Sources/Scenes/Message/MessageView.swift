//
//  MessageView.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit
import SnapKit

class MessageView: UIView {
    
    // MARK: - Properties
    weak var viewController: MessageViewController?
    
    
    lazy var leaveMessageButton: UIButton = {
        let button = UIButton()
        button.setTitle("Leave Message", for: .normal)
        button.setTitleColor(UIColor.appLight, for: .normal)
        button.addTarget(self.viewController, action: #selector(viewController?.navigateToMainGame), for: .touchUpInside)
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

extension MessageView {
    
    private func setupUI(){
        
        backgroundColor = .appDarkness
        
        addSubview(leaveMessageButton)
        leaveMessageButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
    }
    
}
