//
//  MainAssembler.swift
//  The Weather
//
//  Created by pham.van.ducd on 5/30/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import UIKit

protocol MainAssembler {
    func resolve() -> MainViewController
}

extension MainAssembler where Self: DefaultAssembler {
    func resolve() -> MainViewController {
        let theWeatherNavigationController = UINavigationController()
        let theWeatherViewController: TheWeatherViewController = resolve(
            navigationController: theWeatherNavigationController)
        theWeatherNavigationController.makeTabBarItem(title: "Weather", image: #imageLiteral(resourceName: "stormy-weather-80"), tag: 0)
        theWeatherNavigationController.viewControllers.append(theWeatherViewController)
        
        let favoritesNavigationController = UINavigationController()
        let favoritesViewController: FavoritesViewController = resolve(
            navigationController: favoritesNavigationController)
        favoritesNavigationController.makeTabBarItem(title: "Favorite", image: #imageLiteral(resourceName: "icon-favorite-1"), tag: 1)
        favoritesNavigationController.viewControllers.append(favoritesViewController)
        
        let mainViewController = MainViewController().then {
            $0.viewControllers = [theWeatherNavigationController, favoritesNavigationController]
        }
        
        return mainViewController
    }
}
