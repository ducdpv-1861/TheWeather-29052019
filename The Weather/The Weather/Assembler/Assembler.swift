//
//  Assembler.swift
//  The Weather
//
//  Created by pham.van.ducd on 5/30/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import Foundation

protocol Assembler: class,
    MainAssembler,
    TheWeatherAssembler,
    FavoritesAssembler,
    
AppAssembler {
    
}

final class DefaultAssembler: Assembler {
    
}
