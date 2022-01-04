//
//  MainCoordinator.swift
//  HealthMini
//
//  Created by 임준화 on 2022/01/03.
//

import UIKit

class MainCoordinator: Coordinator{
    let navigationController: UINavigationController
    
    private let window: UIWindow
    
    init(window: UIWindow){
        self.navigationController = UINavigationController()
        self.window = window
    }
    func start() {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        let settingCoordinator
    }
}
