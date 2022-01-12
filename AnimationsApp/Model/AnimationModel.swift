//
//  AnimationModel.swift
//  AnimationsApp
//
//  Created by Сашок on 12.01.2022.
//

import Spring

struct AnimationModel {
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getRandomAnimation() -> AnimationModel {
        let preset = Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? ""
        let curve = (Spring.AnimationCurve.allCases.randomElement() ?? .easeIn).rawValue
        let force = CGFloat.random(in: 0.5...1)
        let duration = CGFloat.random(in: 0.5...1)
        let delay = CGFloat.random(in: 0...0.2)
        
        return AnimationModel(animation: preset,
                              curve: curve,
                              force: force,
                              duration: duration,
                              delay: delay)
    }
}
