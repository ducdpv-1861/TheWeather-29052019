//
//  FavoritesViewController.swift
//  The Weather
//
//  Created by pham.van.ducd on 5/30/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import UIKit

final class FavoritesViewController: UIViewController {
    
    deinit {
        logDeinit()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

// MARK: - StotyboardSceneBased
extension FavoritesViewController: StoryboardSceneBased {
    static var sceneStoryboard = Storyboards.main
}
