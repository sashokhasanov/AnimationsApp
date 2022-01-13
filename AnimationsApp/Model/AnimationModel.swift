//
//  AnimationModel.swift
//  AnimationsApp
//
//  Created by Сашок on 12.01.2022.
//

import Foundation

struct AnimationModel {
    let animation: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        String(format: """
                        Preset: \(animation)
                        Curve: \(curve)
                        Force: %.2f
                        Duration: %.2f
                        Delay: %.2f
                       """,
               arguments: [force, duration, delay])
    }
    
    static func getRandomAnimation() -> AnimationModel {
        let preset = DataManager.instance.animations.randomElement()?.rawValue ?? ""
        let curve = (DataManager.instance.curves.randomElement() ?? .easeIn).rawValue
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
