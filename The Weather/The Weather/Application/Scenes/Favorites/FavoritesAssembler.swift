//
//  FavoritesAssembler.swift
//  The Weather
//
//  Created by pham.van.ducd on 5/30/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import UIKit

protocol FavoritesAssembler {
    func resolve(navigationController: UINavigationController) -> FavoritesViewController
}

extension FavoritesAssembler where Self: DefaultAssembler {
    func resolve(navigationController: UINavigationController) -> FavoritesViewController {
        let viewController = FavoritesViewController.instantiate()
        return viewController
    }
}

