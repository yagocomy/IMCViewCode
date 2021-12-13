//
//  ViewController.swift
//  IMC ViewCode
//
//  Created by Yago De Moura Silva on 11/12/21.
//
import UIKit
import SnapKit

class LaunchViewController: UIViewController {
    
    let launchView: LaunchView = {
        let launchView = LaunchView()
        return launchView
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
      
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = self.launchView
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
