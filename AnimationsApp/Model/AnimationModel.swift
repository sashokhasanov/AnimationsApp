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
}
