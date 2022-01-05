//
//  AppCoordinator.swift
//  HealthMini
//
//  Created by 임준화 on 2022/01/05.
//

import Foundation
import UIKit

class AppCoordinator: BaseCoordinator{
    let window: UIWindow
    
    init(window: UIWindow){
        self.window = window
        super.init()
    }
    
    override func start() {
        let navigationController = UINavigationController()
        let settingCoordinator = SettingCoordinator(navigationController: navigationController)
    }
}
