//
//  Coordinator.swift
//  HealthMini
//
//  Created by 임준화 on 2022/01/03.
//

import UIKit

protocol Coordinator{
    var navigationController: UINavigationController {get set}
    func start()
}
