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
        label.backgroundColor = .clear
        label.text = "Cálculo do IMC"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = .zero
        return label
    }()
    
    private lazy var secondLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.backgroundColor = .clear
        label.textColor = .white
        label.text = "Descubra seu índice de massa corporal"
        label.textAlignment = .center
        label.numberOfLines = .zero
        return label
    }()
    
    private lazy var weightLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.backgroundColor = .clear
        label.text = "Peso (KG)"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = .zero
        return label
    }()
    
    private lazy var heightLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.backgroundColor = .clear
        label.text = "Altura (m)"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = .zero
        return label
    }()
    
    lazy var weightTextField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: 15, weight: .bold)
        textField.borderStyle = .none
        textField.placeholder = " Ex: 75"
        textField.textColor = .black
        textField.keyboardType = .decimalPad
        textField.backgroundColor = .white
        textField.keyboardType = .emailAddress
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    lazy var heightTextField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: 15, weight: .bold)
        textField.borderStyle = .none
        textField.placeholder = " Ex: 1.75"
        textField.keyboardType = .decimalPad
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.keyboardType = .emailAddress
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    public lazy var calculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Calcular", for: .normal)
        button.backgroundColor = .yellow
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(calculate), for: .touchUpInside)
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
        let imageView = UIImageView(image: UIImage(named: ""))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var imc: Double = 0

    init() {
        super.init(frame: .zero)
        backgroundColor = .init(red: 81/255.0, green: 177/255.0, blue: 192/255.0, alpha: 1)
        setHierarchy()
        setConstraints()
        showResults()
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
    
    @IBAction func calculate(_ sender: Any){
        if let weight = Double(weightTextField.text!), let height = Double(heightTextField.text!){
            imc = weight / (height*height)
            showResults()
        }
    }
    
    func showResults(){
        var result: String = ""
        var image: String = ""
        switch imc {
        case 0..<16:
            result = "magreza"
            image = "abaixo"
        case 16..<18.5:
            result = "Abaixo do peso"
            image = "abaixo"
        case 18.5..<25:
            result = "Peso ideal"
            image = "abaixo"
        case 25..<30:
            result = "Sobrepeso"
            image = "sobre"
        default:
            result = "Obesidade"
            image = "obesidade"
        }
        yourIMCLabel.text = "Seu IMC é \(Int(imc)): e corresponde a: \(result)"
        launchScreenImageView.image = UIImage(named: image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
