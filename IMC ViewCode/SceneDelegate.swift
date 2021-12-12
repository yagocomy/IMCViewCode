//
//  SceneDelegate.swift
//  IMC ViewCode
//
//  Created by Yago De Moura Silva on 11/12/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: scene)
        window?.rootViewController = LaunchViewController()
        window?.makeKeyAndVisible()
    }
}
