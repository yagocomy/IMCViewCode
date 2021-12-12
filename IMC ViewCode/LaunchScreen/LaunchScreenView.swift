//
//  LaunchScreenView.swift
//  IMC ViewCode
//
//  Created by Yago De Moura Silva on 12/12/21.
//

import UIKit
import SnapKit

class LaunchScreenView: UIView {
    
    private lazy var launchScreenImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "LaunchScreen"))
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        
        launchScreenImageView.snp.makeConstraints{ $0
            $0.edges.equalToSuperview()
        }
        
    }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}
