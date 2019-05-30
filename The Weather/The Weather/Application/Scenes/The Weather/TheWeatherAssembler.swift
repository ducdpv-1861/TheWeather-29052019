//
//  TheWeatherAssembler.swift
//  The Weather
//
//  Created by pham.van.ducd on 5/30/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import UIKit

protocol TheWeatherAssembler {
    func resolve(navigationController: UINavigationController) -> TheWeatherViewController
}

extension TheWeatherAssembler where Self: DefaultAssembler {
    func resolve(navigationController: UINavigationController) -> TheWeatherViewController {
        let viewController = TheWeatherViewController.instantiate()
        return viewController
    }
}
