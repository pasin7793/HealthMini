//
//  MainCoordinator.swift
//  HealthMini
//
//  Created by 임준화 on 2022/01/03.
//

import UIKit

class MainCoordinator: Coordinator{
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    private let window: UIWindow
    
    init(window: UIWindow){
        self.navigationController = UINavigationController()
        self.window = window
    }
    func start() {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        let settingCoordinator = SettingCoordinator(navigationController: navigationController)
        settingCoordinator.start()
    }
}
