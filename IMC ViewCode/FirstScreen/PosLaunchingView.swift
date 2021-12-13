//
//  IMCScreenView.swift
//  IMC ViewCode
//
//  Created by Yago De Moura Silva on 11/12/21.
//

import UIKit

struct ConstantsColors {
    static let col1 = UIColor(red: 81, green: 177, blue: 192, alpha: 1)
}

class PosLaunchingView: UIView {
    
    private lazy var firstLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 40, weight: .bold)
        label.backgroundColor = .clear
        label.text = "Cálculo do IMC"
        label.textAlignment = .center
        label.numberOfLines = .zero
        return label
    }()
    
    private lazy var secondLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.backgroundColor = .clear
        label.text = "Descubra seu índice de massa corporal"
        label.textAlignment = .center
        label.numberOfLines = .zero
        return label
    }()
    
    private lazy var weightLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.backgroundColor = .clear
        label.text = "Peso (KG)"
        label.textAlignment = .center
        label.numberOfLines = .zero
        return label
    }()
    
    private lazy var heightLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.backgroundColor = .clear
        label.text = "Peso (KG)"
        label.textAlignment = .center
        label.numberOfLines = .zero
        return label
    }()
    
    lazy var weightTextField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: 15, weight: .bold)
        textField.borderStyle = .line
        textField.placeholder = "Ex: 75"
        textField.textColor = .black
        textField.keyboardType = .emailAddress
        textField.layer.cornerRadius = 30
        return textField
    }()
    
    lazy var heightTextField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: 15, weight: .bold)
        textField.borderStyle = .line
        textField.placeholder = "Ex: 1,75"
        textField.textColor = .black
        textField.keyboardType = .emailAddress
        textField.layer.cornerRadius = 30
        return textField
    }()
    
    public lazy var calculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Calcular", for: .normal)
        button.backgroundColor = .systemBlue
       // button.addTarget(self, action: #selector(entrarButtonUp), for: .touchUpInside)
        return button
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
    return view
    }()
    
    private lazy var yourIMCLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.backgroundColor = .clear
        label.text = "Seu índice de massa corporal é:"
        label.textAlignment = .center
        label.numberOfLines = .zero
        return label
    }()
    
    private lazy var launchScreenImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "ideal"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .cyan
        setHierarchy()
        setConstraints()
    }
    
    func setHierarchy(){
        addSubview(firstLabel)
        addSubview(secondLabel)
        addSubview(weightLabel)
        addSubview(heightLabel)
        addSubview(weightTextField)
        addSubview(heightTextField)
        addSubview(calculateButton)
        addSubview(containerView)
        addSubview(yourIMCLabel)
        addSubview(launchScreenImageView)
    }
    
   private func setConstraints(){
        firstLabel.snp.makeConstraints{ $0
            $0.top.equalToSuperview().offset(70)
            $0.leading.equalToSuperview().offset(50)
            $0.trailing.equalToSuperview().offset(-50)
        }
        
        secondLabel.snp.makeConstraints{ $0
            $0.top.equalTo(firstLabel.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().offset(-10)
        }
       
       weightLabel.snp.makeConstraints{ $0
           $0.top.equalTo(secondLabel.snp.bottom).offset(50)
           $0.leading.equalToSuperview().offset(40)
           $0.width.equalTo(100)
           $0.height.equalTo(20)
       }
       
       heightLabel.snp.makeConstraints{ $0
           $0.top.equalTo(secondLabel.snp.bottom).offset(50)
           $0.trailing.equalToSuperview().offset(-40)
           $0.width.equalTo(100)
           $0.height.equalTo(20)
       }
       
       weightTextField.snp.makeConstraints{ $0
           $0.top.equalTo(weightLabel.snp.bottom).offset(10)
           $0.leading.equalToSuperview().offset(40)
           $0.width.equalTo(100)
           $0.height.equalTo(40)
       }
       
       heightTextField.snp.makeConstraints{ $0
           $0.top.equalTo(heightLabel.snp.bottom).offset(10)
           $0.trailing.equalToSuperview().offset(-40)
           $0.width.equalTo(100)
           $0.height.equalTo(40)
       }
       
       calculateButton.snp.makeConstraints{ $0
           $0.top.equalTo(weightTextField.snp.bottom).offset(30)
           $0.leading.equalToSuperview().offset(40)
           $0.trailing.equalToSuperview().offset(-40)
           $0.width.equalTo(100)
           $0.height.equalTo(40)
       }
       
       containerView.snp.makeConstraints{ $0
           $0.top.equalTo(calculateButton.snp.bottom).offset(30)
           $0.leading.equalToSuperview()
           $0.trailing.equalToSuperview()
           $0.bottom.equalToSuperview()
       }
       
       yourIMCLabel.snp.makeConstraints{ $0
           $0.top.equalTo(containerView.snp.top).offset(20)
           $0.leading.equalToSuperview().offset(20)
           $0.trailing.equalToSuperview().offset(-20)
       }
       
       launchScreenImageView.snp.makeConstraints{ $0
           $0.top.equalTo(yourIMCLabel.snp.top).offset(40)
           $0.bottom.equalToSuperview()
           $0.leading.equalToSuperview().offset(20)
           $0.trailing.equalToSuperview().offset(-20)
       }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
