//
//  ScreenViewController.swift
//  IMC ViewCode
//
//  Created by Yago De Moura Silva on 12/12/21.
//

import UIKit
import SnapKit

class PosLauchingViewController: UIViewController {
    
    let posLaunchView: PosLaunchingView = {
        let posLaunchView = PosLaunchingView()
        return posLaunchView
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        view = PosLaunchingView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = self.posLaunchView
    }
}
