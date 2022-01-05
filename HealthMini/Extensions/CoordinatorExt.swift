//
//  CoordinatorExt.swift
//  HealthMini
//
//  Created by 임준화 on 2022/01/05.
//

import Foundation

extension Coordinator{
    func store(coordinator: Coordinator){
        childCoordinators.append(coordinator)
    }
    
    func free(coordinator: Coordinator){
        childCoordinators = childCoordinators.filter {$0 !== coordinator}
    }
}
