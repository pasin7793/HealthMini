//
//  Coordinator.swift
//  HealthMini
//
//  Created by 임준화 on 2022/01/03.
//

import UIKit

protocol Coordinator: class{
    var childCoordinators: [Coordinator] {get set}
    func start()
}
