//
//  MainViewController.swift
//  The Weather
//
//  Created by pham.van.ducd on 5/30/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import UIKit

final class MainViewController: RAMAnimatedTabBarController {
    deinit {
        logDeinit()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        configSubviews()
    }
    
    private func configSubviews() {
        tabBar.do {
            $0.backgroundImage = UIImage()
            $0.shadowImage = UIImage()
            $0.backgroundColor = .ghostWhite
        }
        changeSelectedColor(.pastelRed, iconSelectedColor: .pastelRed)
    }
}

// MARK: - StotyboardSceneBased
extension MainViewController: StoryboardSceneBased {
    static var sceneStoryboard = Storyboards.main
}
