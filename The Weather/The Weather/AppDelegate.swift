//
//  AppDelegate.swift
//  The Weather
//
//  Created by pham.van.ducd on 5/29/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var assembler: Assembler = DefaultAssembler()
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        
        if NSClassFromString("XCTest") != nil {
            window?.rootViewController = UnitTestViewController()
        } else {
            bindViewModel()
        }
    }
    
    private func bindViewModel() {
        window = UIWindow()
        if let window = window {
            let viewModel: AppViewModel = assembler.resolve(window: window)
            let input = AppViewModel.Input(loadTrigger: Driver.just(()))
            let output = viewModel.transform(input)
            
            output.toMain
                .drive()
                .disposed(by: rx.disposeBag)
        }
    }
}

