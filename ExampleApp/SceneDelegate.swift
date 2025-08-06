//
//  SceneDelegate.swift
//  ExampleApp
//
//  Created by Gleb on 7/25/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        // наша сцена
        guard let windowScene = (scene as? UIWindowScene) else { return }
        // Создаем окно для сцены
        let window = UIWindow(windowScene: windowScene)
        // Устанавливаем корневой контроллер в окне
        window.rootViewController = ViewController()
        // отображаем оено на экране
        window.makeKeyAndVisible()
        // сохраняем ссылку на окно что бы оно не было выгружено
        self.window = window
    }
}

