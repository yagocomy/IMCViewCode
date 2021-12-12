//
//  ScreenViewController.swift
//  IMC ViewCode
//
//  Created by Yago De Moura Silva on 12/12/21.
//

import UIKit
import SnapKit

class PosLauchingViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        view = PosLaunchingView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - view

fileprivate class PosLaunchingView: UIView {
    
    private lazy var launchScreenImageView: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 40, weight: .bold)
        label.backgroundColor = .yellow
        label.text = "Cálculo do IMC"
        label.textAlignment = .center
        label.numberOfLines = .zero
        
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .orange
        
        addSubview(launchScreenImageView)
        
        launchScreenImageView.snp.makeConstraints{ $0
            $0.top.equalToSuperview().offset(30)
            $0.leading.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().offset(-10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
