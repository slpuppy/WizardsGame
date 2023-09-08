//
//  CampfireView.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit
import SnapKit

class CampfireView: UIView {
    
    // MARK: - Properties
    weak var viewController: CampfireViewController?
    
    
    lazy var leaveCampfireButton: UIButton = {
        let button = UIButton()
        button.setTitle("Leave Campfire", for: .normal)
        button.setTitleColor(UIColor.appLight, for: .normal)
        button.addTarget(self.viewController, action: #selector(viewController?.navigateToMainGame), for: .touchUpInside)
        return button
    }()
    
    lazy var callMettingButton: UIButton = {
        let button = UIButton()
        button.setTitle("Call Meeting", for: .normal)
        button.setTitleColor(UIColor.appLight, for: .normal)
        button.addTarget(self.viewController, action: #selector(viewController?.navigateToMeeting), for: .touchUpInside)
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

extension CampfireView {
    
    private func setupUI(){
        
        backgroundColor = .appDarkness
        
        addSubview(leaveCampfireButton)
        leaveCampfireButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        addSubview(callMettingButton)
        callMettingButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(leaveCampfireButton.snp.bottom).offset(32)
        }
        
    }
    
}
