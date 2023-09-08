//
//  MeetingView.swift
//  WizardsVsRobots
//
//  Created by Alessandra Fernandes Lacerda on 29/08/22.
//

import UIKit
import SnapKit

class MeetingView: UIView {
    
    // MARK: - Properties
    weak var viewController: MeetingViewController?
    
    
    lazy var leaveMeetingButton: UIButton = {
        let button = UIButton()
        button.setTitle("Leave Meeting", for: .normal)
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

extension MeetingView {
    
    private func setupUI(){
        
        backgroundColor = .appDarkness
        
        addSubview(leaveMeetingButton)
        leaveMeetingButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
    }
    
}
