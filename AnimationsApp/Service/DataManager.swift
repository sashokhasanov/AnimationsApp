//
//  DataManager.swift
//  AnimationsApp
//
//  Created by Сашок on 12.01.2022.
//

import Spring

class DataManager {
    
    static let instance = DataManager()
    
    private init() {}
    
    func getRandomAnimation() -> AnimationModel {
        let preset = Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? ""
        let curve = (Spring.AnimationCurve.allCases.randomElement() ?? .easeIn).rawValue
        let force = Float.random(in: 0.5...1)
        let duration = Float.random(in: 0.5...1)
        let delay = Float.random(in: 0...0.2)
        
        return AnimationModel(animation: preset,
                              curve: curve,
                              force: force,
                              duration: duration,
                              delay: delay)
    }
}
