//
//  DataManager.swift
//  AnimationsApp
//
//  Created by Сашок on 12.01.2022.
//

import Spring

class DataManager {
    
    static let instance = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
