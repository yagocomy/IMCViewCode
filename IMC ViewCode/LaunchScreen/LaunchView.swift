//
//  LaunchScreenView.swift
//  IMC ViewCode
//
//  Created by Yago De Moura Silva on 12/12/21.
//

import UIKit
import SnapKit

class LaunchView: UIView {
    
    private lazy var launchScreenImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "LaunchScreen"))
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private lazy var footerLabel = createLabel(ofType: .footer, withText: "by Yago")
    
    init() {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .blue
        
        setupHierarchy()
        setupConstraints()
    }
    
    private func setupHierarchy() {
        addSubview(launchScreenImageView)
        addSubview(footerLabel)
    }
    
    private func setupConstraints() {
        
        launchScreenImageView.snp.makeConstraints{ $0
            $0.edges.equalToSuperview()
        }
        
        footerLabel.snp.makeConstraints{ $0
            $0.top.equalToSuperview().offset(50)
            $0.leading.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().offset(-10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createLabel(ofType type: LabelType, withText text: String) -> UILabel {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = text
        label.font = type.fontType
        label.numberOfLines = .zero
        label.textAlignment = .center
        
        return label
    }
}

// MARK: Helper enum

fileprivate enum LabelType {
    case main
    case footer
    
    var fontType: UIFont {
        switch self {
        case .main:
            return .systemFont(ofSize: 50, weight: .bold)
        case .footer:
            return .preferredFont(forTextStyle: .footnote)
        }
    }
}
