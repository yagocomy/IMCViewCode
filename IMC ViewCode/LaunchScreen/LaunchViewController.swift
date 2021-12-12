//
//  ViewController.swift
//  IMC ViewCode
//
//  Created by Yago De Moura Silva on 11/12/21.
//
import UIKit
import SnapKit

class LaunchViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        view = LaunchView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(view)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in // ESPERO 3s PARA O SPLASH SUMIR
            let vc = PosLauchingViewController()
            vc.modalPresentationStyle = .fullScreen // CONFIGURO O VIEW CONTROLLER PARA TELA CHEIA
            vc.modalTransitionStyle = .crossDissolve
            self?.present(vc, animated: true, completion: nil) // APRESENTO O VC
        }
    }
}




// MARK: - View

fileprivate class LaunchView: UIView {
    
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
        
       // NSLayoutConstraint.activate(
//            [
//                mainLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -10),
//                mainLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//                mainLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),

//                footerLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -5),
//                footerLabel.heightAnchor.constraint(equalToConstant: 50),
//                footerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//                footerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
//            ]
     //   )
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
