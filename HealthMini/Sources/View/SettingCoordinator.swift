//
//  SettingCoordinator.swift
//  HealthMini
//
//  Created by 임준화 on 2022/01/04.
//

import UIKit

class SettingCoordinator{
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start(){
        let settingViewController = settingViewController()
        navigationController.pushViewController(settingViewController, animated: true)
    }
}
