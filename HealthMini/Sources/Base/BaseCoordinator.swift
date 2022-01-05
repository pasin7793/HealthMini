//
//  BaseCoordinator.swift
//  HealthMini
//
//  Created by 임준화 on 2022/01/05.
//

import Foundation

class BaseCoordinator: Coordinator{
    var childCoordinators: [Coordinator] = []
    var isCompleted: (() -> ())?
    
    func start() {
        fatalError("Children should implement `start`.")
    }
    
    
}
