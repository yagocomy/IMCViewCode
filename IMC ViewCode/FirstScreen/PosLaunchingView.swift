//
//  IMCScreenView.swift
//  IMC ViewCode
//
//  Created by Yago De Moura Silva on 11/12/21.
//

import UIKit

class PosLaunchingView: UIView {
    
    private lazy var firstLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 40, weight: .bold)
        label.backgroundColor = .yellow
        label.text = "Cálculo do IMC"
        label.textAlignment = .center
        label.numberOfLines = .zero
        
        return label
    }()
    
    private lazy var secondLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.backgroundColor = .yellow
        label.text = "Descubra seu índice de massa corporal"
        label.textAlignment = .center
        label.numberOfLines = .zero
        
        return label
    }()
    
    private lazy var weightLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.backgroundColor = .yellow
        label.text = "Peso (KG)"
        label.textAlignment = .center
        label.numberOfLines = .zero
        
        return label
    }()
    
    private lazy var heightLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.backgroundColor = .yellow
        label.text = "Peso (KG)"
        label.textAlignment = .center
        label.numberOfLines = .zero
        
        return label
    }()
    
    lazy var weightTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .line
        textField.placeholder = "Ex: 75"
        textField.textColor = .black
        textField.keyboardType = .emailAddress
        textField.layer.cornerRadius = 30
        return textField
    }()
    
    lazy var heightTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .line
        textField.placeholder = "Ex: 1,75"
        textField.textColor = .black
        textField.keyboardType = .emailAddress
        textField.layer.cornerRadius = 30
        return textField
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .orange
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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
